part of '../lib.dart';

abstract class TriggerToken<T extends Object> extends Token<Trigger<T>> {
  const TriggerToken();
}

abstract class Trigger<T extends Object> {
  static Trigger<T> consume<T extends Object>(
    CTNode n, [
    Token<Trigger<T>>? token,
  ]) {
    return n._consume<Trigger<T>, T>(token);
  }

  void call([T arg]);
  void Function() bind(T arg);

  Future<void> get called;

  Result<K> asyncHandler<K, R extends Object>(
    Future<K> Function(T arg) fn, {
    void Function()? abort,
  });

  K handler<K>(K Function(T arg) fn, K initialValue);

  void provide([Token<Trigger<T>>? token]);
}

class _TriggerUnit<T extends Object> extends Unit<Trigger<T>, Object>
    implements Trigger<T> {
  var _completer = Completer<T>();
  var _dep = Object();
  late T arg;
  final CTNode _ownerNode;

  @override
  Future<void> get called => _completer.future;

  _TriggerUnit(this._ownerNode);

  @override
  Trigger<T> unwrap() {
    return this;
  }

  @override
  void call([T? arg]) {
    this.arg = arg ??= Object() as T;

    if (!_completer.isCompleted) {
      _completer.complete(arg);
    }

    notify();

    _dep = Object();
    _completer = Completer<T>();
  }

  @override
  void Function() bind(T arg) {
    return () => call(arg);
  }

  @override
  Result<K> asyncHandler<K, R extends Object>(
    Future<K> Function(T arg) fn, {
    void Function()? abort,
  }) {
    final memoized = _ownerNode.memo(() => fn(arg));

    return _ownerNode.invoke.async(
      memoized,
      abort: abort,
      deferredUntil: called,
      dep: _dep,
    );
  }

  @override
  K handler<K>(K Function(T arg) fn, K initialValue) {
    final memoized = _ownerNode.memo(() => fn(arg));

    return _ownerNode.invoke.deferred<K, Object>(
      memoized,
      until: called,
      initialValue: initialValue,
      dep: _dep,
    );
  }

  @override
  void provide([Token<Trigger<T>>? token]) {
    _ownerNode._provide(token ?? TypeToken<Trigger<T>>(), this);
  }

  @override
  int get hashCode => _dep.hashCode;

  @override
  bool operator ==(Object other) {
    return other is _TriggerUnit<T> && other._dep == _dep;
  }
}
