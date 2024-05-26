import 'package:crowd_math/controller/past_exams_controller.dart';
import 'package:crowd_math/core/page_titile_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class PastExamsPage extends HookWidget {
  const PastExamsPage({super.key});
  static const path = "/pastExams/:university/:year/:isSciences";
  static String generatePath(String university, int year, bool isSciences) =>
      "/pastExams/$university/$year/$isSciences";
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PastExamsController());
    final intYear = int.parse(Get.parameters['year']!);
    final isSciences = Get.parameters["isSciences"]! == true.toString();
    useEffect(() {
      controller.init(intYear, isSciences);
      return controller.close;
    }, []);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(PageTitleCore.pageTitleFromPagePath(Get.currentRoute)),
          ),
          body: Obx(() {
            final pastExams = controller.rxPastExams;
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pastExams.length,
              itemBuilder: (context, index) {
                final pastExam = pastExams[index];
                final path = pastExam.path;
                final title = pastExam.title;
                final showTitle =
                    pastExam.type == "selectable" ? "$title(どちらかを選択)" : title;
                if (pastExam.type == "preparation") {
                  return Text("$titleは準備中です");
                }
                return Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(showTitle),
                        InteractiveViewer(
                            minScale: 0.1,
                            maxScale: 7,
                            child: Image.asset(path)),
                      ],
                    ),
                  ),
                );
              },
            );
          })),
    );
  }
}
