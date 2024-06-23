// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_statistic_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CenterStatisticResultImpl _$$CenterStatisticResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CenterStatisticResultImpl(
      average: (json['average'] as num?)?.toDouble() ?? 1.0,
      subject: json['subject'] as String? ?? "",
      standardDeviation: (json['standardDeviation'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$$CenterStatisticResultImplToJson(
        _$CenterStatisticResultImpl instance) =>
    <String, dynamic>{
      'average': instance.average,
      'subject': instance.subject,
      'standardDeviation': instance.standardDeviation,
    };
