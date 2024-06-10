// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_bookmark_page_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalBookmarkExamImpl _$$LocalBookmarkExamImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalBookmarkExamImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      memo: json['memo'] as String? ?? "",
      pagePath: json['pagePath'] as String,
    );

Map<String, dynamic> _$$LocalBookmarkExamImplToJson(
        _$LocalBookmarkExamImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'memo': instance.memo,
      'pagePath': instance.pagePath,
    };
