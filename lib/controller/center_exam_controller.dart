import 'package:crowd_math/constants/center_exam/center_answers.dart';
import 'package:crowd_math/constants/center_exam/center_exam_paths.dart';
import 'package:crowd_math/constants/center_exam/center_exam_subject_constant.dart';
import 'package:crowd_math/controller/abstract/exam_controller.dart';
import 'package:crowd_math/model/center_answer/center_answer.dart';
import 'package:crowd_math/model/center_exam/answer_chunk/answer_chunk.dart';
import 'package:get/get.dart';

class CenterExamController extends ExamController {
  final rxPaths = <String>[].obs;
  final rxMyAnswerChunks = <AnswerChunk>[].obs;
  final rxIsGradeMode = false.obs;
  final rxGradedPoint = 0.obs;
  final rxFullPoint = 0.obs;
  void init(String year, String subject) {
    _setPaths(year, subject);
    _setAnswers(year, subject);
  }

  void close() {
    rxPaths([]);
    rxMyAnswerChunks([]);
    rxIsGradeMode(false);
    rxGradedPoint(0);
    rxFullPoint(0);
  }

  void _setPaths(String year, String subject) {
    rxPaths.value = centerExamPaths().where((path) {
      final intYear = int.parse(year);
      if (intYear < 2021) {
        return path.contains(year) && path.contains(subject);
      } else {
        return path.contains(subject);
      }
    }).toList();
  }

  void _setAnswers(String year, String subject) {
    final name = CenterExamSubjectConstant.all
        .firstWhere((element) => element.subject == subject)
        .subjectName;
    final answers = centerAnswers()
        .map((e) => CenterAnswer.fromJson(e))
        .toList()
        .where((element) =>
            element.title.contains(year) && element.subject == name)
        .toList();
    if (answers.isEmpty) return;
    final answer = answers.first;
    rxMyAnswerChunks.value = answer.pointAllocations.map((e) {
      final point = e.point;
      final correctAnswers = e.answers;
      final myAnswers = correctAnswers.map((e) => "").toList();
      return AnswerChunk(
          point: point, correctAnswers: correctAnswers, myAnswers: myAnswers);
    }).toList();
  }

  void onElementTapped(int i, int j, int number) {
    if (rxIsGradeMode.value) return;
    List<String> answers = List.from(rxMyAnswerChunks[i].myAnswers);
    answers[j] = number.toString();
    rxMyAnswerChunks[i] = rxMyAnswerChunks[i].copyWith(myAnswers: answers);
  }

  void onGradeButtonPressed() {
    if (rxIsGradeMode.value) return;
    rxIsGradeMode(true);
    int gradedPoint = 0;
    int fullPoint = 0;
    for (final myAnswerChunk in rxMyAnswerChunks) {
      final point = myAnswerChunk.point;
      fullPoint += point;
      if (myAnswerChunk.isCorrect()) {
        gradedPoint += point;
      }
    }
    rxGradedPoint(gradedPoint);
    rxFullPoint(fullPoint);
  }
}
