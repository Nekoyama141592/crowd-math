// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'center_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CenterAnswer _$CenterAnswerFromJson(Map<String, dynamic> json) {
  return _CenterAnswer.fromJson(json);
}

/// @nodoc
mixin _$CenterAnswer {
  String get title => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  List<PointAllocation> get pointAllocations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterAnswerCopyWith<CenterAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterAnswerCopyWith<$Res> {
  factory $CenterAnswerCopyWith(
          CenterAnswer value, $Res Function(CenterAnswer) then) =
      _$CenterAnswerCopyWithImpl<$Res, CenterAnswer>;
  @useResult
  $Res call(
      {String title, String subject, List<PointAllocation> pointAllocations});
}

/// @nodoc
class _$CenterAnswerCopyWithImpl<$Res, $Val extends CenterAnswer>
    implements $CenterAnswerCopyWith<$Res> {
  _$CenterAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subject = null,
    Object? pointAllocations = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      pointAllocations: null == pointAllocations
          ? _value.pointAllocations
          : pointAllocations // ignore: cast_nullable_to_non_nullable
              as List<PointAllocation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterAnswerImplCopyWith<$Res>
    implements $CenterAnswerCopyWith<$Res> {
  factory _$$CenterAnswerImplCopyWith(
          _$CenterAnswerImpl value, $Res Function(_$CenterAnswerImpl) then) =
      __$$CenterAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String subject, List<PointAllocation> pointAllocations});
}

/// @nodoc
class __$$CenterAnswerImplCopyWithImpl<$Res>
    extends _$CenterAnswerCopyWithImpl<$Res, _$CenterAnswerImpl>
    implements _$$CenterAnswerImplCopyWith<$Res> {
  __$$CenterAnswerImplCopyWithImpl(
      _$CenterAnswerImpl _value, $Res Function(_$CenterAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subject = null,
    Object? pointAllocations = null,
  }) {
    return _then(_$CenterAnswerImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      pointAllocations: null == pointAllocations
          ? _value._pointAllocations
          : pointAllocations // ignore: cast_nullable_to_non_nullable
              as List<PointAllocation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterAnswerImpl extends _CenterAnswer {
  const _$CenterAnswerImpl(
      {required this.title,
      required this.subject,
      required final List<PointAllocation> pointAllocations})
      : _pointAllocations = pointAllocations,
        super._();

  factory _$CenterAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterAnswerImplFromJson(json);

  @override
  final String title;
  @override
  final String subject;
  final List<PointAllocation> _pointAllocations;
  @override
  List<PointAllocation> get pointAllocations {
    if (_pointAllocations is EqualUnmodifiableListView)
      return _pointAllocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pointAllocations);
  }

  @override
  String toString() {
    return 'CenterAnswer(title: $title, subject: $subject, pointAllocations: $pointAllocations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterAnswerImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            const DeepCollectionEquality()
                .equals(other._pointAllocations, _pointAllocations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, subject,
      const DeepCollectionEquality().hash(_pointAllocations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterAnswerImplCopyWith<_$CenterAnswerImpl> get copyWith =>
      __$$CenterAnswerImplCopyWithImpl<_$CenterAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterAnswerImplToJson(
      this,
    );
  }
}

abstract class _CenterAnswer extends CenterAnswer {
  const factory _CenterAnswer(
          {required final String title,
          required final String subject,
          required final List<PointAllocation> pointAllocations}) =
      _$CenterAnswerImpl;
  const _CenterAnswer._() : super._();

  factory _CenterAnswer.fromJson(Map<String, dynamic> json) =
      _$CenterAnswerImpl.fromJson;

  @override
  String get title;
  @override
  String get subject;
  @override
  List<PointAllocation> get pointAllocations;
  @override
  @JsonKey(ignore: true)
  _$$CenterAnswerImplCopyWith<_$CenterAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
