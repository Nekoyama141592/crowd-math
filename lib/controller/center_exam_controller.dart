import 'package:crowd_math/constants/center_exam/center_exam_paths.dart';
import 'package:crowd_math/controller/abstract/exam_controller.dart';
import 'package:get/get.dart';

class CenterExamController extends ExamController {
  final rxPaths = <String>[].obs;
  void init(String year, String subject) {
    rxPaths.value = centerExamPaths().where((path) {
      final intYear = int.parse(year);
      if (intYear < 2021) {
        return path.contains(year) && path.contains(subject);
      } else {
        return path.contains(subject);
      }
    }).toList();
  }
}
