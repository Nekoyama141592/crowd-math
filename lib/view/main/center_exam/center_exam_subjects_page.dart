import 'package:crowd_math/view/components/basic_page.dart';
import 'package:crowd_math/view/main/center_exam/center_exam_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenterExamSubjectsPage extends StatelessWidget {
  const CenterExamSubjectsPage({super.key});
  static const path = "/centerExamSubjects/:year";
  static String generatePath(int year) => "/centerExamSubjects/$year";
  @override
  Widget build(BuildContext context) {
    final subjects = <String>[
      "sekaisiA",
      "sekaisiB",
      "nihonsiA",
      "nihonsiB",
      "chiriA",
      "chiriB",
      "gensya",
      "rinri",
      "seikei",
      "rinri_seikei",
      "eigo",
      "buturikiso",
      "kagakukiso",
      "seibutsukiso",
      "chigakukiso",
      "sugaku1",
      "sugaku1A",
      "sugaku2",
      "sugaku2B",
      "buturi",
      "kagaku",
      "seibutu",
      "chigaku"
    ];
    return BasicPage(
        appBar: AppBar(),
        child: ListView(
          children: subjects
              .map((subject) => ListTile(
                    title: Text(subject),
                    onTap: () {
                      final paramYear = Get.parameters["year"];
                      if (paramYear == null) return;
                      final year = int.tryParse(paramYear);
                      if (year == null) return;
                      final path = CenterExamPage.generatePath(year, subject);
                      Get.toNamed(path);
                    },
                  ))
              .toList(),
        ));
  }
}
