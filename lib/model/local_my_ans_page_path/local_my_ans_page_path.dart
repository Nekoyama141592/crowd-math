import 'package:crowd_math/core/page_titile_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_my_ans_page_path.freezed.dart';
part 'local_my_ans_page_path.g.dart';

@freezed
abstract class LocalMyAnsPagePath implements _$LocalMyAnsPagePath {
  const factory LocalMyAnsPagePath(
      {required DateTime createdAt,
      required String pagePath,
      required String imageID}) = _LocalMyAnsPagePath;
  factory LocalMyAnsPagePath.fromJson(Map<String, dynamic> json) =>
      _$LocalMyAnsPagePathFromJson(json);
  String get pageTitle => PageTitleCore.pageTitleFromPagePath(pagePath);
}
