import 'dart:async';

import 'package:at_client/src/manager/at_client_manager.dart';
import 'package:at_commons/at_commons.dart' show AtKey, AtValue;
import 'package:at_client/src/key_stream/key_stream_mixin.dart';
import 'package:at_client/src/key_stream/key_stream_iterable_base.dart';
import 'package:meta/meta.dart';

/// Class to expose a stream of [List<AtKey>] based on the provided query parameters
///
/// [ListKeyStream] exposes a stream of [List]s where each element of the [List] represents data for a single [AtKey]
///
/// {@template ListKeyStream}
/// Pass the [convert] callback function to define how an [AtKey] and [AtValue] will converted into elements of the
/// list. To filter [AtKey]s that will be included in the list, you may apply a custom [regex] filter, or pass
/// in [sharedBy] and/or [sharedWith] atSigns. By default [shouldGetKeys] is enabled, which will initially populate the
/// list with available keys that match the [regex], [sharedBy], and [sharedWith] filters. To control how the stream
/// indexes the keys internally, you may pass a [generateRef] function which takes an [AtKey] and [AtValue] and returns
/// the associated ref used for indexing (by default this is [AtKey.key]). You may also override the [atClientManager]
/// if necessary.
/// {@endtemplate}
class ListKeyStream<T> extends KeyStreamIterableBase<T, List<T>>
    implements Stream<List<T>>, KeyStreamMixin<List<T>> {
  /// Create a [ListKeyStream] instance
  ///
  /// {@macro ListKeyStream}
  ListKeyStream({
    required T? Function(AtKey key, AtValue value) convert,
    String? regex,
    String? sharedBy,
    String? sharedWith,
    bool shouldGetKeys = true,
    String Function(AtKey key, AtValue value)? generateRef,
    FutureOr<void> Function(Object exception, [StackTrace? stackTrace])?
    onError,
    AtClientManager? atClientManager,
  }) : super(
         convert: convert,
         regex: regex,
         shouldGetKeys: shouldGetKeys,
         sharedBy: sharedBy,
         sharedWith: sharedWith,
         generateRef: generateRef,
         castTo: (values) => castTo<T>(values),
         onError: onError,
         atClientManager: atClientManager,
       );
}

@visibleForTesting
List<T> castTo<T>(Iterable<T> values) => values.toList();
