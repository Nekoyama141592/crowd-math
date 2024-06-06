import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_chunk.freezed.dart';
part 'answer_chunk.g.dart';

@freezed
abstract class AnswerChunk implements _$AnswerChunk {
  const AnswerChunk._();
  const factory AnswerChunk(
      {required int point,
      required List<int> questionIndexes,
      required List<String> myAnswers,
      required List<String> correctAnswers}) = _AnswerChunk;
  factory AnswerChunk.fromJson(Map<String, dynamic> json) =>
      _$AnswerChunkFromJson(json);
  bool isCorrect() {
    bool result = true;
    for (int i = 0; i < correctAnswers.length; i++) {
      final myAnswer = myAnswers[i];
      final correctAnswer = correctAnswers[i];
      if (myAnswer != correctAnswer) {
        result = false;
      }
    }
    return result;
  }
}
