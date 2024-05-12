import 'package:crowd_math/view/past_exams_page.dart';
import 'package:get/get.dart';

class YearOverviewController extends GetxController {
  void onYearButtonTapped(int year, bool isSciences) {
    final university = Get.parameters['university'];
    if (university == null) return;
    final path = PastExamsPage.generatePath(university, year, isSciences);
    Get.toNamed(path);
  }
}
