// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_allocation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointAllocation _$PointAllocationFromJson(Map<String, dynamic> json) {
  return _PointAllocation.fromJson(json);
}

/// @nodoc
mixin _$PointAllocation {
  int get point => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointAllocationCopyWith<PointAllocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointAllocationCopyWith<$Res> {
  factory $PointAllocationCopyWith(
          PointAllocation value, $Res Function(PointAllocation) then) =
      _$PointAllocationCopyWithImpl<$Res, PointAllocation>;
  @useResult
  $Res call({int point, List<String> answers});
}

/// @nodoc
class _$PointAllocationCopyWithImpl<$Res, $Val extends PointAllocation>
    implements $PointAllocationCopyWith<$Res> {
  _$PointAllocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointAllocationImplCopyWith<$Res>
    implements $PointAllocationCopyWith<$Res> {
  factory _$$PointAllocationImplCopyWith(_$PointAllocationImpl value,
          $Res Function(_$PointAllocationImpl) then) =
      __$$PointAllocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int point, List<String> answers});
}

/// @nodoc
class __$$PointAllocationImplCopyWithImpl<$Res>
    extends _$PointAllocationCopyWithImpl<$Res, _$PointAllocationImpl>
    implements _$$PointAllocationImplCopyWith<$Res> {
  __$$PointAllocationImplCopyWithImpl(
      _$PointAllocationImpl _value, $Res Function(_$PointAllocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? answers = null,
  }) {
    return _then(_$PointAllocationImpl(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointAllocationImpl extends _PointAllocation {
  const _$PointAllocationImpl(
      {required this.point, required final List<String> answers})
      : _answers = answers,
        super._();

  factory _$PointAllocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointAllocationImplFromJson(json);

  @override
  final int point;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'PointAllocation(point: $point, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointAllocationImpl &&
            (identical(other.point, point) || other.point == point) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, point, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointAllocationImplCopyWith<_$PointAllocationImpl> get copyWith =>
      __$$PointAllocationImplCopyWithImpl<_$PointAllocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointAllocationImplToJson(
      this,
    );
  }
}

abstract class _PointAllocation extends PointAllocation {
  const factory _PointAllocation(
      {required final int point,
      required final List<String> answers}) = _$PointAllocationImpl;
  const _PointAllocation._() : super._();

  factory _PointAllocation.fromJson(Map<String, dynamic> json) =
      _$PointAllocationImpl.fromJson;

  @override
  int get point;
  @override
  List<String> get answers;
  @override
  @JsonKey(ignore: true)
  _$$PointAllocationImplCopyWith<_$PointAllocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
