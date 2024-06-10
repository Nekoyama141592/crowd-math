import 'package:crowd_math/core/page_titile_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_bookmark_page_path.freezed.dart';
part 'local_bookmark_page_path.g.dart';

@freezed
abstract class LocalBookmarkExam implements _$LocalBookmarkExam {
  const LocalBookmarkExam._();
  const factory LocalBookmarkExam({
    required DateTime createdAt,
    @Default("") String memo,
    required String pagePath,
  }) = _LocalBookmarkExam;
  factory LocalBookmarkExam.fromJson(Map<String, dynamic> json) =>
      _$LocalBookmarkExamFromJson(json);
  String get pageTitle => PageTitleCore.pageTitleFromPagePath(pagePath);
}
