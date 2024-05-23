import 'package:crowd_math/constants/center_exam/center_exam_subject_constant.dart';
import 'package:crowd_math/controller/center_exam_controller.dart';
import 'package:crowd_math/core/center_or_kyotsu.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class CenterExamPage extends HookWidget {
  const CenterExamPage({super.key});
  static const path = "/centerExam/:year/:subject";
  static String generatePath(int year, String subject) =>
      "/centerExam/$year/$subject";
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CenterExamController());
    final year = Get.parameters["year"];
    final subject = Get.parameters["subject"];
    useEffect(() {
      if (year == null || subject == null) return;
      controller.init(year, subject);
      return;
    }, []);
    final subjectName = CenterExamSubjectConstant.all
        .firstWhere((e) => e.subject == subject)
        .subjectName;
    return BasicPage(
        appBar: AppBar(
          title: Text("$year年 ${CenterOrKyotsu.text(year)} $subjectName"),
        ),
        child: Obx(() {
          final paths = controller.rxPaths;
          return ListView(
            scrollDirection: Axis.horizontal,
            children: paths.map((e) {
              return Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(e),
              );
            }).toList(),
          );
        }));
  }
}
