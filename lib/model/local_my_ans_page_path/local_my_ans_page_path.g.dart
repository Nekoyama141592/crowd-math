// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_my_ans_page_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalMyAnsPagePathImpl _$$LocalMyAnsPagePathImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalMyAnsPagePathImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      memo: json['memo'] as String? ?? "",
      pagePath: json['pagePath'] as String,
      imageID: json['imageID'] as String,
    );

Map<String, dynamic> _$$LocalMyAnsPagePathImplToJson(
        _$LocalMyAnsPagePathImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'memo': instance.memo,
      'pagePath': instance.pagePath,
      'imageID': instance.imageID,
    };
