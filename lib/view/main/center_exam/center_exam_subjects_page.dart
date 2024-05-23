import 'package:crowd_math/controller/center_exam_subjects_controller.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:crowd_math/view/main/center_exam/center_exam_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class CenterExamSubjectsPage extends HookWidget {
  const CenterExamSubjectsPage({super.key});
  static const path = "/centerExamSubjects/:year";
  static String generatePath(int year) => "/centerExamSubjects/$year";
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CenterExamSubjectsController());
    final paramYear = Get.parameters["year"];
    useEffect(() {
      if (paramYear == null) return;
      controller.init(paramYear);
      return;
    }, []);
    return BasicPage(
        appBar: AppBar(
          title: Text("センター${paramYear ?? ""}"),
        ),
        child: Obx(() {
          final subjects = controller.rxSubjects;
          return ListView(
            children: subjects
                .map((subject) => ListTile(
                      title: Text(subject.subjectName),
                      onTap: () {
                        if (paramYear == null) return;
                        final year = int.tryParse(paramYear);
                        if (year == null) return;
                        final path =
                            CenterExamPage.generatePath(year, subject.subject);
                        Get.toNamed(path);
                      },
                    ))
                .toList(),
          );
        }));
  }
}
