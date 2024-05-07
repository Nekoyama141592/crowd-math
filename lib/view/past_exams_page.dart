import 'package:crowd_math/controller/past_exams_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PastExamsPage extends StatelessWidget {
  const PastExamsPage({super.key});
  static const path = "/pastExams/:university";
  static String generatePath(String university) => "/pastExams/$university";
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PastExamsController());
    final paths = controller.getPaths();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: paths.length,
          itemBuilder: (context, index) {
            final path = paths[index];
            return Image.asset(path);
          },
        ),
      ),
    );
  }
}
