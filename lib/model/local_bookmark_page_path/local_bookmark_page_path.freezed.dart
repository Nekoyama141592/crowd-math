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

LocalBookmarkPagePath _$LocalBookmarkPagePathFromJson(
    Map<String, dynamic> json) {
  return _LocalBookmarkPagePath.fromJson(json);
}

/// @nodoc
mixin _$LocalBookmarkPagePath {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get pagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalBookmarkPagePathCopyWith<LocalBookmarkPagePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalBookmarkPagePathCopyWith<$Res> {
  factory $LocalBookmarkPagePathCopyWith(LocalBookmarkPagePath value,
          $Res Function(LocalBookmarkPagePath) then) =
      _$LocalBookmarkPagePathCopyWithImpl<$Res, LocalBookmarkPagePath>;
  @useResult
  $Res call({DateTime createdAt, String pagePath});
}

/// @nodoc
class _$LocalBookmarkPagePathCopyWithImpl<$Res,
        $Val extends LocalBookmarkPagePath>
    implements $LocalBookmarkPagePathCopyWith<$Res> {
  _$LocalBookmarkPagePathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? pagePath = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalBookmarkPagePathImplCopyWith<$Res>
    implements $LocalBookmarkPagePathCopyWith<$Res> {
  factory _$$LocalBookmarkPagePathImplCopyWith(
          _$LocalBookmarkPagePathImpl value,
          $Res Function(_$LocalBookmarkPagePathImpl) then) =
      __$$LocalBookmarkPagePathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String pagePath});
}

/// @nodoc
class __$$LocalBookmarkPagePathImplCopyWithImpl<$Res>
    extends _$LocalBookmarkPagePathCopyWithImpl<$Res,
        _$LocalBookmarkPagePathImpl>
    implements _$$LocalBookmarkPagePathImplCopyWith<$Res> {
  __$$LocalBookmarkPagePathImplCopyWithImpl(_$LocalBookmarkPagePathImpl _value,
      $Res Function(_$LocalBookmarkPagePathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? pagePath = null,
  }) {
    return _then(_$LocalBookmarkPagePathImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pagePath: null == pagePath
          ? _value.pagePath
          : pagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalBookmarkPagePathImpl implements _LocalBookmarkPagePath {
  const _$LocalBookmarkPagePathImpl(
      {required this.createdAt, required this.pagePath});

  factory _$LocalBookmarkPagePathImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalBookmarkPagePathImplFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final String pagePath;

  @override
  String toString() {
    return 'LocalBookmarkPagePath(createdAt: $createdAt, pagePath: $pagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalBookmarkPagePathImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.pagePath, pagePath) ||
                other.pagePath == pagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, pagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalBookmarkPagePathImplCopyWith<_$LocalBookmarkPagePathImpl>
      get copyWith => __$$LocalBookmarkPagePathImplCopyWithImpl<
          _$LocalBookmarkPagePathImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalBookmarkPagePathImplToJson(
      this,
    );
  }
}

abstract class _LocalBookmarkPagePath implements LocalBookmarkPagePath {
  const factory _LocalBookmarkPagePath(
      {required final DateTime createdAt,
      required final String pagePath}) = _$LocalBookmarkPagePathImpl;

  factory _LocalBookmarkPagePath.fromJson(Map<String, dynamic> json) =
      _$LocalBookmarkPagePathImpl.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get pagePath;
  @override
  @JsonKey(ignore: true)
  _$$LocalBookmarkPagePathImplCopyWith<_$LocalBookmarkPagePathImpl>
      get copyWith => throw _privateConstructorUsedError;
}
