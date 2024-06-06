// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_chunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerChunkImpl _$$AnswerChunkImplFromJson(Map<String, dynamic> json) =>
    _$AnswerChunkImpl(
      point: json['point'] as int,
      myAnswers:
          (json['myAnswers'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswers: (json['correctAnswers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AnswerChunkImplToJson(_$AnswerChunkImpl instance) =>
    <String, dynamic>{
      'point': instance.point,
      'myAnswers': instance.myAnswers,
      'correctAnswers': instance.correctAnswers,
    };
