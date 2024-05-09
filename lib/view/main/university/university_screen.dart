import 'package:crowd_math/view/main/year_overview_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UniversityScreen extends StatelessWidget {
  const UniversityScreen({super.key});
  static const names = [
    "hokudai",
    "kyoto",
    "kyushu",
    "nagoya",
    "osaka",
    "tohoku",
    "toko",
    "tokyo"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: names
          .map((name) => ListTile(
                title: Text(name),
                onTap: () {
                  final path = YearOverviewPage.generatePath(name);
                  Get.toNamed(path);
                },
              ))
          .toList(),
    );
  }
}
