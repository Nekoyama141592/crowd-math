import 'package:crowd_math/view/main/year_overview_page.dart';
import 'package:crowd_math/view/past_exams_page.dart';
import 'package:get/get.dart';

final getPages = [
  GetPage(name: YearOverviewPage.path, page: () => const YearOverviewPage()),
  GetPage(name: PastExamsPage.path, page: () => const PastExamsPage())
];
