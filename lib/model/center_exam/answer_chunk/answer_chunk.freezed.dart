// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_chunk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerChunk _$AnswerChunkFromJson(Map<String, dynamic> json) {
  return _AnswerChunk.fromJson(json);
}

/// @nodoc
mixin _$AnswerChunk {
  int get point => throw _privateConstructorUsedError;
  List<int> get questionIndexes => throw _privateConstructorUsedError;
  List<String> get myAnswers => throw _privateConstructorUsedError;
  List<String> get correctAnswers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerChunkCopyWith<AnswerChunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerChunkCopyWith<$Res> {
  factory $AnswerChunkCopyWith(
          AnswerChunk value, $Res Function(AnswerChunk) then) =
      _$AnswerChunkCopyWithImpl<$Res, AnswerChunk>;
  @useResult
  $Res call(
      {int point,
      List<int> questionIndexes,
      List<String> myAnswers,
      List<String> correctAnswers});
}

/// @nodoc
class _$AnswerChunkCopyWithImpl<$Res, $Val extends AnswerChunk>
    implements $AnswerChunkCopyWith<$Res> {
  _$AnswerChunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? questionIndexes = null,
    Object? myAnswers = null,
    Object? correctAnswers = null,
  }) {
    return _then(_value.copyWith(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      questionIndexes: null == questionIndexes
          ? _value.questionIndexes
          : questionIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      myAnswers: null == myAnswers
          ? _value.myAnswers
          : myAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerChunkImplCopyWith<$Res>
    implements $AnswerChunkCopyWith<$Res> {
  factory _$$AnswerChunkImplCopyWith(
          _$AnswerChunkImpl value, $Res Function(_$AnswerChunkImpl) then) =
      __$$AnswerChunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int point,
      List<int> questionIndexes,
      List<String> myAnswers,
      List<String> correctAnswers});
}

/// @nodoc
class __$$AnswerChunkImplCopyWithImpl<$Res>
    extends _$AnswerChunkCopyWithImpl<$Res, _$AnswerChunkImpl>
    implements _$$AnswerChunkImplCopyWith<$Res> {
  __$$AnswerChunkImplCopyWithImpl(
      _$AnswerChunkImpl _value, $Res Function(_$AnswerChunkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? questionIndexes = null,
    Object? myAnswers = null,
    Object? correctAnswers = null,
  }) {
    return _then(_$AnswerChunkImpl(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      questionIndexes: null == questionIndexes
          ? _value._questionIndexes
          : questionIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      myAnswers: null == myAnswers
          ? _value._myAnswers
          : myAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswers: null == correctAnswers
          ? _value._correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerChunkImpl extends _AnswerChunk {
  const _$AnswerChunkImpl(
      {required this.point,
      required final List<int> questionIndexes,
      required final List<String> myAnswers,
      required final List<String> correctAnswers})
      : _questionIndexes = questionIndexes,
        _myAnswers = myAnswers,
        _correctAnswers = correctAnswers,
        super._();

  factory _$AnswerChunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerChunkImplFromJson(json);

  @override
  final int point;
  final List<int> _questionIndexes;
  @override
  List<int> get questionIndexes {
    if (_questionIndexes is EqualUnmodifiableListView) return _questionIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionIndexes);
  }

  final List<String> _myAnswers;
  @override
  List<String> get myAnswers {
    if (_myAnswers is EqualUnmodifiableListView) return _myAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myAnswers);
  }

  final List<String> _correctAnswers;
  @override
  List<String> get correctAnswers {
    if (_correctAnswers is EqualUnmodifiableListView) return _correctAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_correctAnswers);
  }

  @override
  String toString() {
    return 'AnswerChunk(point: $point, questionIndexes: $questionIndexes, myAnswers: $myAnswers, correctAnswers: $correctAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerChunkImpl &&
            (identical(other.point, point) || other.point == point) &&
            const DeepCollectionEquality()
                .equals(other._questionIndexes, _questionIndexes) &&
            const DeepCollectionEquality()
                .equals(other._myAnswers, _myAnswers) &&
            const DeepCollectionEquality()
                .equals(other._correctAnswers, _correctAnswers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      point,
      const DeepCollectionEquality().hash(_questionIndexes),
      const DeepCollectionEquality().hash(_myAnswers),
      const DeepCollectionEquality().hash(_correctAnswers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerChunkImplCopyWith<_$AnswerChunkImpl> get copyWith =>
      __$$AnswerChunkImplCopyWithImpl<_$AnswerChunkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerChunkImplToJson(
      this,
    );
  }
}

abstract class _AnswerChunk extends AnswerChunk {
  const factory _AnswerChunk(
      {required final int point,
      required final List<int> questionIndexes,
      required final List<String> myAnswers,
      required final List<String> correctAnswers}) = _$AnswerChunkImpl;
  const _AnswerChunk._() : super._();

  factory _AnswerChunk.fromJson(Map<String, dynamic> json) =
      _$AnswerChunkImpl.fromJson;

  @override
  int get point;
  @override
  List<int> get questionIndexes;
  @override
  List<String> get myAnswers;
  @override
  List<String> get correctAnswers;
  @override
  @JsonKey(ignore: true)
  _$$AnswerChunkImplCopyWith<_$AnswerChunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
