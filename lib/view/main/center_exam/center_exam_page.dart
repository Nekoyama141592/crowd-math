import 'package:crowd_math/controller/center_exam_controller.dart';
import 'package:crowd_math/controller/tokens_controller.dart';
import 'package:crowd_math/core/page_titile_core.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:crowd_math/view/my_answer_image_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class CenterExamPage extends HookWidget {
  const CenterExamPage({super.key});
  static const path = "/centerExam/:year/:subject";
  static String generatePath(int year, String subject) =>
      "/centerExam/$year/$subject";
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CenterExamController());
    final year = Get.parameters["year"];
    final subject = Get.parameters["subject"];
    useEffect(() {
      if (year == null || subject == null) return;
      controller.init(year, subject);
      return;
    }, []);
    return BasicPage(
        appBar: AppBar(
          title: Text(PageTitleCore.pageTitleFromPagePath(Get.currentRoute)),
          actions: [
            InkWell(
                onTap: controller.onImageButtonPressed,
                child: const Icon(
                  Icons.image,
                  color: Colors.orange,
                )),
            InkWell(
                onTap: () {
                  final imageIDs = TokensController.to.rxMyAnswers
                      .where((p0) => p0.pagePath == Get.currentRoute)
                      .map((e) => e.imageID)
                      .toList();
                  Get.to(MyAnswerImagePage(imageIDs: imageIDs));
                },
                child: const Icon(
                  Icons.description,
                  color: Colors.orange,
                )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => controller.bookmark(Get.currentRoute),
          child: const Icon(Icons.bookmark),
        ),
        child: Obx(() {
          final paths = controller.rxPaths;
          return ListView(
            scrollDirection: Axis.horizontal,
            children: paths.map((e) {
              return Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(e),
              );
            }).toList(),
          );
        }));
  }
}
