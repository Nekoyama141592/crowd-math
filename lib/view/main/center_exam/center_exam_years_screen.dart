import 'package:crowd_math/controller/center_exam_years_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenterExamYearsScreen extends StatelessWidget {
  const CenterExamYearsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CenterExamYearsController());
    final yearsList =
        List<int>.generate(2020 - 2004 + 1, (index) => 2020 - index);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: yearsList.map((year) {
          return Column(
            children: [
              ListTile(
                  title: Text("$year年"),
                  onTap: () => controller.onYearButtonTapped(year)),
              const SizedBox(
                height: 20.0,
              ),
            ],
          );
        }).toList(),
      ),
    ));
  }
}
