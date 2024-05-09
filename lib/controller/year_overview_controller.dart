import 'package:crowd_math/view/past_exams_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class YearOverviewController extends GetxController {
  void onYearButtonTapped(BuildContext context, int year) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext innerContext) {
          return CupertinoActionSheet(
            actions: [
              CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(innerContext);
                    _toPastExamsPage(year, false);
                  },
                  child: const Text("文系")),
              CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(innerContext);
                    _toPastExamsPage(year, true);
                  },
                  child: const Text("理系")),
              CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(innerContext);
                  },
                  child: const Text("キャンセル")),
            ],
          );
        });
  }

  void _toPastExamsPage(int year, bool isSciences) {
    final university = Get.parameters['university'];
    if (university == null) return;
    final path = PastExamsPage.generatePath(university, year, isSciences);
    Get.toNamed(path);
  }
}
