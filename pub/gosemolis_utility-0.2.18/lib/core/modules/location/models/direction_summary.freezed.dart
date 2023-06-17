// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direction_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods',
);

DirectionsSummary _$DirectionsSummaryFromJson(Map<String, dynamic> json) {
  return _DirectionsSummary.fromJson(json);
}

/// @nodoc
mixin _$DirectionsSummary {
  String? get text => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionsSummaryCopyWith<DirectionsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsSummaryCopyWith<$Res> {
  factory $DirectionsSummaryCopyWith(
    DirectionsSummary value,
    $Res Function(DirectionsSummary) then,
  ) = _$DirectionsSummaryCopyWithImpl<$Res, DirectionsSummary>;
  @useResult
  $Res call({String? text, double? value});
}

/// @nodoc
class _$DirectionsSummaryCopyWithImpl<$Res, $Val extends DirectionsSummary>
    implements $DirectionsSummaryCopyWith<$Res> {
  _$DirectionsSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = freezed, Object? value = freezed}) {
    return _then(
      _value.copyWith(
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                as String?,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                as double?,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$_DirectionsSummaryCopyWith<$Res>
    implements $DirectionsSummaryCopyWith<$Res> {
  factory _$$_DirectionsSummaryCopyWith(
    _$_DirectionsSummary value,
    $Res Function(_$_DirectionsSummary) then,
  ) = __$$_DirectionsSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, double? value});
}

/// @nodoc
class __$$_DirectionsSummaryCopyWithImpl<$Res>
    extends _$DirectionsSummaryCopyWithImpl<$Res, _$_DirectionsSummary>
    implements _$$_DirectionsSummaryCopyWith<$Res> {
  __$$_DirectionsSummaryCopyWithImpl(
    _$_DirectionsSummary _value,
    $Res Function(_$_DirectionsSummary) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = freezed, Object? value = freezed}) {
    return _then(_$_DirectionsSummary(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectionsSummary implements _DirectionsSummary {
  const _$_DirectionsSummary({required this.text, required this.value});

  factory _$_DirectionsSummary.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$_DirectionsSummaryFromJson(json);

  @override
  final String? text;
  @override
  final double? value;

  @override
  String toString() {
    return 'DirectionsSummary(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectionsSummary &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionsSummaryCopyWith<_$_DirectionsSummary> get copyWith =>
      __$$_DirectionsSummaryCopyWithImpl<_$_DirectionsSummary>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionsSummaryToJson(this);
  }
}

abstract class _DirectionsSummary implements DirectionsSummary {
  const factory _DirectionsSummary({
    required final String? text,
    required final double? value,
  }) = _$_DirectionsSummary;

  factory _DirectionsSummary.fromJson(Map<String, dynamic> json) =
      _$_DirectionsSummary.fromJson;

  @override
  String? get text;
  @override
  double? get value;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionsSummaryCopyWith<_$_DirectionsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
