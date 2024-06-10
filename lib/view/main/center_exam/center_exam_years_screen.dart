import 'package:crowd_math/controller/center_exam_years_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenterExamYearsScreen extends StatelessWidget {
  const CenterExamYearsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CenterExamYearsController());
    final yearsList =
        List<int>.generate(2024 - 2015 + 1, (index) => 2024 - index);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: yearsList.map((year) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all()),
              child: ListTile(
                  title: Text("$year年"),
                  onTap: () => controller.onYearButtonTapped(year)),
            ),
          );
        }).toList(),
      ),
    ));
  }
}
