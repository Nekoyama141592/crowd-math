import 'package:crowd_math/constants/past_exams/university_keys.dart';
import 'package:crowd_math/view/main/university/year_overview_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UniversityScreen extends StatelessWidget {
  const UniversityScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: universityKeys
          .map((key) => ListTile(
                title: Text(key.name),
                onTap: () {
                  final path = YearOverviewPage.generatePath(key.key);
                  Get.toNamed(path);
                },
              ))
          .toList(),
    );
  }
}
