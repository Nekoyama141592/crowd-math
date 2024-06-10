// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_my_ans_page_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalImageAnswer _$LocalImageAnswerFromJson(Map<String, dynamic> json) {
  return _LocalImageAnswer.fromJson(json);
}

/// @nodoc
mixin _$LocalImageAnswer {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  String get pagePath => throw _privateConstructorUsedError;
  String get imageID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalImageAnswerCopyWith<LocalImageAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalImageAnswerCopyWith<$Res> {
  factory $LocalImageAnswerCopyWith(
          LocalImageAnswer value, $Res Function(LocalImageAnswer) then) =
      _$LocalImageAnswerCopyWithImpl<$Res, LocalImageAnswer>;
  @useResult
  $Res call({DateTime createdAt, String memo, String pagePath, String imageID});
}

/// @nodoc
class _$LocalImageAnswerCopyWithImpl<$Res, $Val extends LocalImageAnswer>
    implements $LocalImageAnswerCopyWith<$Res> {
  _$LocalImageAnswerCopyWithImpl(this._value, this._then);

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
    Object? imageID = null,
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
      imageID: null == imageID
          ? _value.imageID
          : imageID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalImageAnswerImplCopyWith<$Res>
    implements $LocalImageAnswerCopyWith<$Res> {
  factory _$$LocalImageAnswerImplCopyWith(_$LocalImageAnswerImpl value,
          $Res Function(_$LocalImageAnswerImpl) then) =
      __$$LocalImageAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String memo, String pagePath, String imageID});
}

/// @nodoc
class __$$LocalImageAnswerImplCopyWithImpl<$Res>
    extends _$LocalImageAnswerCopyWithImpl<$Res, _$LocalImageAnswerImpl>
    implements _$$LocalImageAnswerImplCopyWith<$Res> {
  __$$LocalImageAnswerImplCopyWithImpl(_$LocalImageAnswerImpl _value,
      $Res Function(_$LocalImageAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? memo = null,
    Object? pagePath = null,
    Object? imageID = null,
  }) {
    return _then(_$LocalImageAnswerImpl(
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
      imageID: null == imageID
          ? _value.imageID
          : imageID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalImageAnswerImpl extends _LocalImageAnswer {
  const _$LocalImageAnswerImpl(
      {required this.createdAt,
      this.memo = "",
      required this.pagePath,
      required this.imageID})
      : super._();

  factory _$LocalImageAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalImageAnswerImplFromJson(json);

  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final String memo;
  @override
  final String pagePath;
  @override
  final String imageID;

  @override
  String toString() {
    return 'LocalImageAnswer(createdAt: $createdAt, memo: $memo, pagePath: $pagePath, imageID: $imageID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalImageAnswerImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.pagePath, pagePath) ||
                other.pagePath == pagePath) &&
            (identical(other.imageID, imageID) || other.imageID == imageID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, memo, pagePath, imageID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalImageAnswerImplCopyWith<_$LocalImageAnswerImpl> get copyWith =>
      __$$LocalImageAnswerImplCopyWithImpl<_$LocalImageAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalImageAnswerImplToJson(
      this,
    );
  }
}

abstract class _LocalImageAnswer extends LocalImageAnswer {
  const factory _LocalImageAnswer(
      {required final DateTime createdAt,
      final String memo,
      required final String pagePath,
      required final String imageID}) = _$LocalImageAnswerImpl;
  const _LocalImageAnswer._() : super._();

  factory _LocalImageAnswer.fromJson(Map<String, dynamic> json) =
      _$LocalImageAnswerImpl.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get memo;
  @override
  String get pagePath;
  @override
  String get imageID;
  @override
  @JsonKey(ignore: true)
  _$$LocalImageAnswerImplCopyWith<_$LocalImageAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
