import 'package:crowd_math/view/main/center_exam/center_exam_page.dart';
import 'package:crowd_math/view/main/center_exam/center_exam_subjects_page.dart';
import 'package:crowd_math/view/main/university/year_overview_page.dart';
import 'package:crowd_math/view/main/university/past_exams_page.dart';
import 'package:get/get.dart';

final getPages = [
  GetPage(name: YearOverviewPage.path, page: () => const YearOverviewPage()),
  GetPage(name: PastExamsPage.path, page: () => const PastExamsPage()),
  GetPage(
      name: CenterExamSubjectsPage.path,
      page: () => const CenterExamSubjectsPage()),
  GetPage(name: CenterExamPage.path, page: () => const CenterExamPage()),
];
