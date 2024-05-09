import 'package:crowd_math/controller/year_overview_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YearOverviewPage extends StatelessWidget {
  const YearOverviewPage({super.key});
  static const path = "/yearOverview/:university";
  static String generatePath(String university) => "/yearOverview/$university";
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(YearOverviewController());
    final yearsList =
        List<int>.generate(2024 - 1961 + 1, (index) => 2024 - index);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: yearsList
            .map((year) => ListTile(
                title: Text("$year年"),
                onTap: () => controller.onYearButtonTapped(context, year)))
            .toList(),
      ),
    ));
  }
}
