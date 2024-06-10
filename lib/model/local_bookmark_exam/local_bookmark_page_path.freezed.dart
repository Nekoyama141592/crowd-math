// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_bookmark_page_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalBookmarkExam _$LocalBookmarkExamFromJson(Map<String, dynamic> json) {
  return _LocalBookmarkExam.fromJson(json);
}

/// @nodoc
mixin _$LocalBookmarkExam {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  String get pagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalBookmarkExamCopyWith<LocalBookmarkExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalBookmarkExamCopyWith<$Res> {
  factory $LocalBookmarkExamCopyWith(
          LocalBookmarkExam value, $Res Function(LocalBookmarkExam) then) =
      _$LocalBookmarkExamCopyWithImpl<$Res, LocalBookmarkExam>;
  @useResult
  $Res call({DateTime createdAt, String memo, String pagePath});
}

/// @nodoc
class _$LocalBookmarkExamCopyWithImpl<$Res, $Val extends LocalBookmarkExam>
    implements $LocalBookmarkExamCopyWith<$Res> {
  _$LocalBookmarkExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? memo = null,
    Object? pagePath = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      pagePath: null == pagePath
          ? _value.pagePath
          : pagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalBookmarkExamImplCopyWith<$Res>
    implements $LocalBookmarkExamCopyWith<$Res> {
  factory _$$LocalBookmarkExamImplCopyWith(_$LocalBookmarkExamImpl value,
          $Res Function(_$LocalBookmarkExamImpl) then) =
      __$$LocalBookmarkExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String memo, String pagePath});
}

/// @nodoc
class __$$LocalBookmarkExamImplCopyWithImpl<$Res>
    extends _$LocalBookmarkExamCopyWithImpl<$Res, _$LocalBookmarkExamImpl>
    implements _$$LocalBookmarkExamImplCopyWith<$Res> {
  __$$LocalBookmarkExamImplCopyWithImpl(_$LocalBookmarkExamImpl _value,
      $Res Function(_$LocalBookmarkExamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? memo = null,
    Object? pagePath = null,
  }) {
    return _then(_$LocalBookmarkExamImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      pagePath: null == pagePath
          ? _value.pagePath
          : pagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalBookmarkExamImpl extends _LocalBookmarkExam {
  const _$LocalBookmarkExamImpl(
      {required this.createdAt, this.memo = "", required this.pagePath})
      : super._();

  factory _$LocalBookmarkExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalBookmarkExamImplFromJson(json);

  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final String memo;
  @override
  final String pagePath;

  @override
  String toString() {
    return 'LocalBookmarkExam(createdAt: $createdAt, memo: $memo, pagePath: $pagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalBookmarkExamImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.pagePath, pagePath) ||
                other.pagePath == pagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, memo, pagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalBookmarkExamImplCopyWith<_$LocalBookmarkExamImpl> get copyWith =>
      __$$LocalBookmarkExamImplCopyWithImpl<_$LocalBookmarkExamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalBookmarkExamImplToJson(
      this,
    );
  }
}

abstract class _LocalBookmarkExam extends LocalBookmarkExam {
  const factory _LocalBookmarkExam(
      {required final DateTime createdAt,
      final String memo,
      required final String pagePath}) = _$LocalBookmarkExamImpl;
  const _LocalBookmarkExam._() : super._();

  factory _LocalBookmarkExam.fromJson(Map<String, dynamic> json) =
      _$LocalBookmarkExamImpl.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get memo;
  @override
  String get pagePath;
  @override
  @JsonKey(ignore: true)
  _$$LocalBookmarkExamImplCopyWith<_$LocalBookmarkExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
