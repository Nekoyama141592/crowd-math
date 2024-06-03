import 'package:crowd_math/constants/center_exam/center_answers.dart';
import 'package:crowd_math/constants/center_exam/center_exam_paths.dart';
import 'package:crowd_math/constants/center_exam/center_exam_subject_constant.dart';
import 'package:crowd_math/controller/abstract/exam_controller.dart';
import 'package:get/get.dart';

class CenterExamController extends ExamController {
  final rxPaths = <String>[].obs;
  final rxAnswers = <String>[].obs;
  void init(String year, String subject) {
    _setPaths(year, subject);
    _setAnswers(year, subject);
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
    final answer = centerAnswers()
        .where((element) =>
            element["title"].contains(year) && element["subject"] == name)
        .toList();
    if (answer.isEmpty) return;
    final answerNums = answer.first["answerNums"] as List<String>;
    rxAnswers == answerNums;
  }
}
