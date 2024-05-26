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

LocalMyAnsPagePath _$LocalMyAnsPagePathFromJson(Map<String, dynamic> json) {
  return _LocalMyAnsPagePath.fromJson(json);
}

/// @nodoc
mixin _$LocalMyAnsPagePath {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get pagePath => throw _privateConstructorUsedError;
  String get imageID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalMyAnsPagePathCopyWith<LocalMyAnsPagePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalMyAnsPagePathCopyWith<$Res> {
  factory $LocalMyAnsPagePathCopyWith(
          LocalMyAnsPagePath value, $Res Function(LocalMyAnsPagePath) then) =
      _$LocalMyAnsPagePathCopyWithImpl<$Res, LocalMyAnsPagePath>;
  @useResult
  $Res call({DateTime createdAt, String pagePath, String imageID});
}

/// @nodoc
class _$LocalMyAnsPagePathCopyWithImpl<$Res, $Val extends LocalMyAnsPagePath>
    implements $LocalMyAnsPagePathCopyWith<$Res> {
  _$LocalMyAnsPagePathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? pagePath = null,
    Object? imageID = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$LocalMyAnsPagePathImplCopyWith<$Res>
    implements $LocalMyAnsPagePathCopyWith<$Res> {
  factory _$$LocalMyAnsPagePathImplCopyWith(_$LocalMyAnsPagePathImpl value,
          $Res Function(_$LocalMyAnsPagePathImpl) then) =
      __$$LocalMyAnsPagePathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String pagePath, String imageID});
}

/// @nodoc
class __$$LocalMyAnsPagePathImplCopyWithImpl<$Res>
    extends _$LocalMyAnsPagePathCopyWithImpl<$Res, _$LocalMyAnsPagePathImpl>
    implements _$$LocalMyAnsPagePathImplCopyWith<$Res> {
  __$$LocalMyAnsPagePathImplCopyWithImpl(_$LocalMyAnsPagePathImpl _value,
      $Res Function(_$LocalMyAnsPagePathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? pagePath = null,
    Object? imageID = null,
  }) {
    return _then(_$LocalMyAnsPagePathImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$LocalMyAnsPagePathImpl implements _LocalMyAnsPagePath {
  const _$LocalMyAnsPagePathImpl(
      {required this.createdAt, required this.pagePath, required this.imageID});

  factory _$LocalMyAnsPagePathImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalMyAnsPagePathImplFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final String pagePath;
  @override
  final String imageID;

  @override
  String toString() {
    return 'LocalMyAnsPagePath(createdAt: $createdAt, pagePath: $pagePath, imageID: $imageID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalMyAnsPagePathImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.pagePath, pagePath) ||
                other.pagePath == pagePath) &&
            (identical(other.imageID, imageID) || other.imageID == imageID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, pagePath, imageID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalMyAnsPagePathImplCopyWith<_$LocalMyAnsPagePathImpl> get copyWith =>
      __$$LocalMyAnsPagePathImplCopyWithImpl<_$LocalMyAnsPagePathImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalMyAnsPagePathImplToJson(
      this,
    );
  }
}

abstract class _LocalMyAnsPagePath implements LocalMyAnsPagePath {
  const factory _LocalMyAnsPagePath(
      {required final DateTime createdAt,
      required final String pagePath,
      required final String imageID}) = _$LocalMyAnsPagePathImpl;

  factory _LocalMyAnsPagePath.fromJson(Map<String, dynamic> json) =
      _$LocalMyAnsPagePathImpl.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get pagePath;
  @override
  String get imageID;
  @override
  @JsonKey(ignore: true)
  _$$LocalMyAnsPagePathImplCopyWith<_$LocalMyAnsPagePathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
