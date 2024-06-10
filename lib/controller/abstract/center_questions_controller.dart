import 'package:crowd_math/controller/abstract/exam_controller.dart';
import 'package:crowd_math/model/center_exam/answer_chunk/answer_chunk.dart';
import 'package:get/get.dart';

abstract class CenterQuestionsController extends ExamController {
  final rxMyAnswerChunks = <AnswerChunk>[].obs;
  bool get showGradedResult;
  void onElementTapped(int i, int j, int number);
}
