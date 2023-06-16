part of 'lib.dart';

class CTBuilder<T extends Object> extends CTWidget {
  final Widget Function(CTNode n) builder;
  final T? dep;
  final bool Function(T oldDep, T newDep)? when;

  @override
  bool shouldUpdate(
    CTNode node,
    CTBuilder<T> oldWidget,
    CTBuilder<T> newWidget,
  ) {
    final changed = (when ?? (a, b) => a != b).call(
      oldWidget.dep ?? const Object() as T,
      newWidget.dep ?? const Object() as T,
    );

    return changed;
  }

  const CTBuilder(this.builder, {super.key, this.dep, this.when});

  @override
  Widget build(CTNode n) {
    return builder(n);
  }
}
