import 'package:crowd_math/core/page_titile_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_bookmark_page_path.freezed.dart';
part 'local_bookmark_page_path.g.dart';

@freezed
abstract class LocalBookmarkPagePath implements _$LocalBookmarkPagePath {
  const factory LocalBookmarkPagePath({
    required DateTime createdAt,
    required String pagePath,
  }) = _LocalBookmarkPagePath;
  factory LocalBookmarkPagePath.fromJson(Map<String, dynamic> json) =>
      _$LocalBookmarkPagePathFromJson(json);
  String get pageTitle => PageTitleCore.pageTitleFromPagePath(pagePath);
}
