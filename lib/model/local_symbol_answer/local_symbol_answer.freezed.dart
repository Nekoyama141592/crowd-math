// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_symbol_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalSymbolAnswer _$LocalSymbolAnswerFromJson(Map<String, dynamic> json) {
  return _LocalSymbolAnswer.fromJson(json);
}

/// @nodoc
mixin _$LocalSymbolAnswer {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  String get pagePath => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get answerChunks =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalSymbolAnswerCopyWith<LocalSymbolAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSymbolAnswerCopyWith<$Res> {
  factory $LocalSymbolAnswerCopyWith(
          LocalSymbolAnswer value, $Res Function(LocalSymbolAnswer) then) =
      _$LocalSymbolAnswerCopyWithImpl<$Res, LocalSymbolAnswer>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String memo,
      String pagePath,
      List<Map<String, dynamic>> answerChunks});
}

/// @nodoc
class _$LocalSymbolAnswerCopyWithImpl<$Res, $Val extends LocalSymbolAnswer>
    implements $LocalSymbolAnswerCopyWith<$Res> {
  _$LocalSymbolAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? memo = null,
    Object? pagePath = null,
    Object? answerChunks = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      answerChunks: null == answerChunks
          ? _value.answerChunks
          : answerChunks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalSymbolAnswerImplCopyWith<$Res>
    implements $LocalSymbolAnswerCopyWith<$Res> {
  factory _$$LocalSymbolAnswerImplCopyWith(_$LocalSymbolAnswerImpl value,
          $Res Function(_$LocalSymbolAnswerImpl) then) =
      __$$LocalSymbolAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String memo,
      String pagePath,
      List<Map<String, dynamic>> answerChunks});
}

/// @nodoc
class __$$LocalSymbolAnswerImplCopyWithImpl<$Res>
    extends _$LocalSymbolAnswerCopyWithImpl<$Res, _$LocalSymbolAnswerImpl>
    implements _$$LocalSymbolAnswerImplCopyWith<$Res> {
  __$$LocalSymbolAnswerImplCopyWithImpl(_$LocalSymbolAnswerImpl _value,
      $Res Function(_$LocalSymbolAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? memo = null,
    Object? pagePath = null,
    Object? answerChunks = null,
  }) {
    return _then(_$LocalSymbolAnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      answerChunks: null == answerChunks
          ? _value._answerChunks
          : answerChunks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalSymbolAnswerImpl extends _LocalSymbolAnswer {
  const _$LocalSymbolAnswerImpl(
      {required this.id,
      required this.createdAt,
      this.memo = "",
      required this.pagePath,
      required final List<Map<String, dynamic>> answerChunks})
      : _answerChunks = answerChunks,
        super._();

  factory _$LocalSymbolAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalSymbolAnswerImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final String memo;
  @override
  final String pagePath;
  final List<Map<String, dynamic>> _answerChunks;
  @override
  List<Map<String, dynamic>> get answerChunks {
    if (_answerChunks is EqualUnmodifiableListView) return _answerChunks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerChunks);
  }

  @override
  String toString() {
    return 'LocalSymbolAnswer(id: $id, createdAt: $createdAt, memo: $memo, pagePath: $pagePath, answerChunks: $answerChunks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSymbolAnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.pagePath, pagePath) ||
                other.pagePath == pagePath) &&
            const DeepCollectionEquality()
                .equals(other._answerChunks, _answerChunks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, memo, pagePath,
      const DeepCollectionEquality().hash(_answerChunks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSymbolAnswerImplCopyWith<_$LocalSymbolAnswerImpl> get copyWith =>
      __$$LocalSymbolAnswerImplCopyWithImpl<_$LocalSymbolAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalSymbolAnswerImplToJson(
      this,
    );
  }
}

abstract class _LocalSymbolAnswer extends LocalSymbolAnswer {
  const factory _LocalSymbolAnswer(
          {required final String id,
          required final DateTime createdAt,
          final String memo,
          required final String pagePath,
          required final List<Map<String, dynamic>> answerChunks}) =
      _$LocalSymbolAnswerImpl;
  const _LocalSymbolAnswer._() : super._();

  factory _LocalSymbolAnswer.fromJson(Map<String, dynamic> json) =
      _$LocalSymbolAnswerImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  String get memo;
  @override
  String get pagePath;
  @override
  List<Map<String, dynamic>> get answerChunks;
  @override
  @JsonKey(ignore: true)
  _$$LocalSymbolAnswerImplCopyWith<_$LocalSymbolAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
