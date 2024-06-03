import 'package:crowd_math/constants/center_exam/center_exam_subject_constant.dart';
import 'package:crowd_math/model/center_exam/center_subject.dart';
import 'package:get/get.dart';

class CenterExamSubjectsController extends GetxController {
  final rxSubjects = <CenterSubject>[].obs;
  void init(String year) {
    final intYear = int.parse(year);
    List<CenterSubject> subjects = [];
    if (intYear < 2011) {
      subjects = CenterExamSubjectConstant.before2011;
    } else if (intYear < 2021) {
      subjects = CenterExamSubjectConstant.before2021;
    } else if (intYear == 2021) {
      subjects = CenterExamSubjectConstant.subject2021;
    } else if (intYear == 2022) {
      subjects = CenterExamSubjectConstant.subject2022;
    } else if (intYear == 2023) {
      subjects = CenterExamSubjectConstant.subject2023;
    } else if (intYear == 2024) {
      subjects = CenterExamSubjectConstant.subject2024;
    }
    // 数学の解答はまだ用意していない
    final results = subjects
        .where((element) => !element.subjectName.contains("数学"))
        .toList();
    rxSubjects.value = results;
  }
}
