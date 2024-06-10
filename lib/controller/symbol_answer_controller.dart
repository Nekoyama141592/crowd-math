import 'package:crowd_math/controller/abstract/center_questions_controller.dart';
import 'package:crowd_math/model/center_exam/answer_chunk/answer_chunk.dart';
import 'package:get/get.dart';

class SymbolAnswerController extends CenterQuestionsController {
  @override
  bool get showGradedResult => true.obs.value;

  @override
  void onElementTapped(int i, int j, int number) {
    return;
  }

  void init(List<AnswerChunk> answerChunks) {
    rxMyAnswerChunks.value = answerChunks;
  }

  void close() {
    rxMyAnswerChunks([]);
  }
}
