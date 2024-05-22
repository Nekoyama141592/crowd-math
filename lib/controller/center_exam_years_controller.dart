import 'package:crowd_math/view/main/center_exam/center_exam_subjects_page.dart';
import 'package:get/get.dart';

class CenterExamYearsController extends GetxController {
  void onYearButtonTapped(int year) {
    final path = CenterExamSubjectsPage.generatePath(year);
    Get.toNamed(path);
  }
}
