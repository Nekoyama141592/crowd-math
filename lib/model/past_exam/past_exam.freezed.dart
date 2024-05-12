// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'past_exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PastExam _$PastExamFromJson(Map<String, dynamic> json) {
  return _PastExam.fromJson(json);
}

/// @nodoc
mixin _$PastExam {
  String get title => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastExamCopyWith<PastExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastExamCopyWith<$Res> {
  factory $PastExamCopyWith(PastExam value, $Res Function(PastExam) then) =
      _$PastExamCopyWithImpl<$Res, PastExam>;
  @useResult
  $Res call({String title, String path, String type});
}

/// @nodoc
class _$PastExamCopyWithImpl<$Res, $Val extends PastExam>
    implements $PastExamCopyWith<$Res> {
  _$PastExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? path = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PastExamImplCopyWith<$Res>
    implements $PastExamCopyWith<$Res> {
  factory _$$PastExamImplCopyWith(
          _$PastExamImpl value, $Res Function(_$PastExamImpl) then) =
      __$$PastExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String path, String type});
}

/// @nodoc
class __$$PastExamImplCopyWithImpl<$Res>
    extends _$PastExamCopyWithImpl<$Res, _$PastExamImpl>
    implements _$$PastExamImplCopyWith<$Res> {
  __$$PastExamImplCopyWithImpl(
      _$PastExamImpl _value, $Res Function(_$PastExamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? path = null,
    Object? type = null,
  }) {
    return _then(_$PastExamImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PastExamImpl implements _PastExam {
  const _$PastExamImpl(
      {required this.title, required this.path, required this.type});

  factory _$PastExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$PastExamImplFromJson(json);

  @override
  final String title;
  @override
  final String path;
  @override
  final String type;

  @override
  String toString() {
    return 'PastExam(title: $title, path: $path, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastExamImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, path, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastExamImplCopyWith<_$PastExamImpl> get copyWith =>
      __$$PastExamImplCopyWithImpl<_$PastExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PastExamImplToJson(
      this,
    );
  }
}

abstract class _PastExam implements PastExam {
  const factory _PastExam(
      {required final String title,
      required final String path,
      required final String type}) = _$PastExamImpl;

  factory _PastExam.fromJson(Map<String, dynamic> json) =
      _$PastExamImpl.fromJson;

  @override
  String get title;
  @override
  String get path;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$PastExamImplCopyWith<_$PastExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
