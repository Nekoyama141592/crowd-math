import 'package:crowd_math/controller/past_exams_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PastExamsPage extends StatelessWidget {
  const PastExamsPage({super.key});
  static const path = "/pastExams/:university/:year/:isSciences";
  static String generatePath(String university, int year, bool isSciences) =>
      "/pastExams/$university/$year/$isSciences";
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PastExamsController());
    final intYear = int.parse(Get.parameters['year']!);
    final isSciences = Get.parameters["isSciences"]! == true.toString();
    final paths = controller.getPaths(intYear, isSciences);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: paths.length,
          itemBuilder: (context, index) {
            final pastExam = paths[index];
            final path = pastExam.path;
            final title = pastExam.title;
            if (pastExam.type == "preparation") {
              return Text("$titleは準備中です");
            }
            return Stack(
              children: [
                InteractiveViewer(
                    minScale: 1, maxScale: 7, child: Image.asset(path)),
                Align(alignment: Alignment.topCenter, child: Text(title))
              ],
            );
          },
        ),
      ),
    );
  }
}
