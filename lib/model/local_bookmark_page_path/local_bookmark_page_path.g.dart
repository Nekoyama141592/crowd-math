// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_bookmark_page_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalBookmarkPagePathImpl _$$LocalBookmarkPagePathImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalBookmarkPagePathImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      pagePath: json['pagePath'] as String,
    );

Map<String, dynamic> _$$LocalBookmarkPagePathImplToJson(
        _$LocalBookmarkPagePathImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'pagePath': instance.pagePath,
    };
