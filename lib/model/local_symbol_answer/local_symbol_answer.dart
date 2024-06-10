import 'package:crowd_math/core/page_titile_core.dart';
import 'package:crowd_math/model/center_exam/answer_chunk/answer_chunk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_symbol_answer.freezed.dart';
part 'local_symbol_answer.g.dart';

@freezed
abstract class LocalSymbolAnswer implements _$LocalSymbolAnswer {
  const LocalSymbolAnswer._();
  const factory LocalSymbolAnswer({
    required String id,
    required DateTime createdAt,
    @Default("") String memo,
    required String pagePath,
    required List<Map<String, dynamic>> answerChunks,
  }) = _LocalSymbolAnswer;
  factory LocalSymbolAnswer.fromJson(Map<String, dynamic> json) =>
      _$LocalSymbolAnswerFromJson(json);
  String get pageTitle => PageTitleCore.pageTitleFromPagePath(pagePath);
  List<AnswerChunk> typedAnswerChunks() =>
      answerChunks.map((e) => AnswerChunk.fromJson(e)).toList();
  int gradedPoint() {
    final results = typedAnswerChunks();
    int gradedPoint = 0;
    for (final myAnswerChunk in results) {
      final point = myAnswerChunk.point;
      if (myAnswerChunk.isCorrect()) {
        gradedPoint += point;
      }
    }
    return gradedPoint;
  }

  int fullPoint() {
    final results = typedAnswerChunks();
    int fullPoint = 0;
    for (final myAnswerChunk in results) {
      final point = myAnswerChunk.point;
      fullPoint += point;
    }
    return fullPoint;
  }
}
