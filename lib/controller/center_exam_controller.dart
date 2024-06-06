import 'package:crowd_math/constants/center_exam/center_answers.dart';
import 'package:crowd_math/constants/center_exam/center_exam_paths.dart';
import 'package:crowd_math/constants/center_exam/center_exam_subject_constant.dart';
import 'package:crowd_math/controller/abstract/exam_controller.dart';
import 'package:crowd_math/model/center_answer/center_answer.dart';
import 'package:crowd_math/model/point_allocation/point_allocation.dart';
import 'package:get/get.dart';

class CenterExamController extends ExamController {
  final rxPaths = <String>[].obs;
  final rxAnswer = Rx<CenterAnswer?>(null);
  final rxMyAnswers = <PointAllocation>[].obs;
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
    final answers = centerAnswers()
        .map((e) => CenterAnswer.fromJson(e))
        .toList()
        .where((element) =>
            element.title.contains(year) && element.subject == name)
        .toList();
    if (answers.isEmpty) return;
    final answer = answers.first;
    rxMyAnswers.value = answer.pointAllocations.map((e) {
      final point = e.point;
      final initialAnswers = e.answers.map((e) => "Hello").toList();
      return PointAllocation(point: point, answers: initialAnswers);
    }).toList();
    rxAnswer(answer);
  }

  void onElementTapped(int i, int j, int number) {
    List<String> answers = List.from(rxMyAnswers[i].answers);
    answers[j] = number.toString();
    rxMyAnswers[i] = rxMyAnswers[i].copyWith(answers: answers);
  }
}
