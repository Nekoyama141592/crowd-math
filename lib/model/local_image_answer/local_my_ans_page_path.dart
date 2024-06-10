import 'package:crowd_math/core/page_titile_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_my_ans_page_path.freezed.dart';
part 'local_my_ans_page_path.g.dart';

@freezed
abstract class LocalImageAnswer implements _$LocalImageAnswer {
  const LocalImageAnswer._();
  const factory LocalImageAnswer(
      {required DateTime createdAt,
      @Default("") String memo,
      required String pagePath,
      required String imageID}) = _LocalImageAnswer;
  factory LocalImageAnswer.fromJson(Map<String, dynamic> json) =>
      _$LocalImageAnswerFromJson(json);
  String get pageTitle => PageTitleCore.pageTitleFromPagePath(pagePath);
}
