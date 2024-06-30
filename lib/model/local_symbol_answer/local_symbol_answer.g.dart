// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_symbol_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalSymbolAnswerImpl _$$LocalSymbolAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalSymbolAnswerImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      memo: json['memo'] as String? ?? "",
      pagePath: json['pagePath'] as String,
      answerChunks: (json['answerChunks'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      standardScore: (json['standardScore'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$LocalSymbolAnswerImplToJson(
        _$LocalSymbolAnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'memo': instance.memo,
      'pagePath': instance.pagePath,
      'answerChunks': instance.answerChunks,
      'standardScore': instance.standardScore,
    };
