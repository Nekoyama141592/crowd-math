// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'center_statistic_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CenterStatisticResult _$CenterStatisticResultFromJson(
    Map<String, dynamic> json) {
  return _CenterStatisticResult.fromJson(json);
}

/// @nodoc
mixin _$CenterStatisticResult {
  double get average => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  double get standardDeviation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterStatisticResultCopyWith<CenterStatisticResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterStatisticResultCopyWith<$Res> {
  factory $CenterStatisticResultCopyWith(CenterStatisticResult value,
          $Res Function(CenterStatisticResult) then) =
      _$CenterStatisticResultCopyWithImpl<$Res, CenterStatisticResult>;
  @useResult
  $Res call({double average, String subject, double standardDeviation});
}

/// @nodoc
class _$CenterStatisticResultCopyWithImpl<$Res,
        $Val extends CenterStatisticResult>
    implements $CenterStatisticResultCopyWith<$Res> {
  _$CenterStatisticResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = null,
    Object? subject = null,
    Object? standardDeviation = null,
  }) {
    return _then(_value.copyWith(
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      standardDeviation: null == standardDeviation
          ? _value.standardDeviation
          : standardDeviation // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterStatisticResultImplCopyWith<$Res>
    implements $CenterStatisticResultCopyWith<$Res> {
  factory _$$CenterStatisticResultImplCopyWith(
          _$CenterStatisticResultImpl value,
          $Res Function(_$CenterStatisticResultImpl) then) =
      __$$CenterStatisticResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double average, String subject, double standardDeviation});
}

/// @nodoc
class __$$CenterStatisticResultImplCopyWithImpl<$Res>
    extends _$CenterStatisticResultCopyWithImpl<$Res,
        _$CenterStatisticResultImpl>
    implements _$$CenterStatisticResultImplCopyWith<$Res> {
  __$$CenterStatisticResultImplCopyWithImpl(_$CenterStatisticResultImpl _value,
      $Res Function(_$CenterStatisticResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? average = null,
    Object? subject = null,
    Object? standardDeviation = null,
  }) {
    return _then(_$CenterStatisticResultImpl(
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      standardDeviation: null == standardDeviation
          ? _value.standardDeviation
          : standardDeviation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterStatisticResultImpl extends _CenterStatisticResult {
  const _$CenterStatisticResultImpl(
      {this.average = 1.0, this.subject = "", this.standardDeviation = 1.0})
      : super._();

  factory _$CenterStatisticResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterStatisticResultImplFromJson(json);

  @override
  @JsonKey()
  final double average;
  @override
  @JsonKey()
  final String subject;
  @override
  @JsonKey()
  final double standardDeviation;

  @override
  String toString() {
    return 'CenterStatisticResult(average: $average, subject: $subject, standardDeviation: $standardDeviation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterStatisticResultImpl &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.standardDeviation, standardDeviation) ||
                other.standardDeviation == standardDeviation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, average, subject, standardDeviation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterStatisticResultImplCopyWith<_$CenterStatisticResultImpl>
      get copyWith => __$$CenterStatisticResultImplCopyWithImpl<
          _$CenterStatisticResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterStatisticResultImplToJson(
      this,
    );
  }
}

abstract class _CenterStatisticResult extends CenterStatisticResult {
  const factory _CenterStatisticResult(
      {final double average,
      final String subject,
      final double standardDeviation}) = _$CenterStatisticResultImpl;
  const _CenterStatisticResult._() : super._();

  factory _CenterStatisticResult.fromJson(Map<String, dynamic> json) =
      _$CenterStatisticResultImpl.fromJson;

  @override
  double get average;
  @override
  String get subject;
  @override
  double get standardDeviation;
  @override
  @JsonKey(ignore: true)
  _$$CenterStatisticResultImplCopyWith<_$CenterStatisticResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
