// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_allocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointAllocationImpl _$$PointAllocationImplFromJson(
        Map<String, dynamic> json) =>
    _$PointAllocationImpl(
      point: json['point'] as int,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PointAllocationImplToJson(
        _$PointAllocationImpl instance) =>
    <String, dynamic>{
      'point': instance.point,
      'answers': instance.answers,
    };
