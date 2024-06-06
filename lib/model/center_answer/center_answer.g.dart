// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CenterAnswerImpl _$$CenterAnswerImplFromJson(Map<String, dynamic> json) =>
    _$CenterAnswerImpl(
      title: json['title'] as String,
      subject: json['subject'] as String,
      pointAllocations: (json['pointAllocations'] as List<dynamic>)
          .map((e) => PointAllocation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CenterAnswerImplToJson(_$CenterAnswerImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'pointAllocations': instance.pointAllocations,
    };
