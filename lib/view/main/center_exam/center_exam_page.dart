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
            InkWell(
                onTap: () {
                  controller.bookmark(Get.currentRoute);
                },
                child: const Icon(
                  Icons.bookmark,
                  color: Colors.orange,
                )),
          ],
        ),
        child: Column(
          children: [
            Obx(() {
              final paths = controller.rxPaths;
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: paths.map((e) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(24.0),
                      child: Image.asset(e),
                    );
                  }).toList(),
                ),
              );
            }),
            Obx(() {
              final myPointAllocations = controller.rxMyAnswers;
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: myPointAllocations.length,
                    itemBuilder: (c, i) {
                      final myPointAllocation = myPointAllocations[i];
                      final answers = myPointAllocation.answers;
                      final needFull = answers.length > 1;
                      final needFullText = needFull ? "(完答)" : "";
                      return Column(children: [
                        Text(
                            "問${i + 1}, 配点: ${myPointAllocation.point}$needFullText"),
                        ...answers.map((myAnswer) {
                          final j = answers.indexOf(myAnswer);
                          List<int> numbers = List.generate(9, (k) => k + 1);
                          return Row(
                            children: numbers.map((number) {
                              final color = number.toString() == myAnswer
                                  ? Colors.purple
                                  : null;
                              return InkWell(
                                onTap: () =>
                                    controller.onElementTapped(i, j, number),
                                child: Container(
                                  padding: const EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(), color: color),
                                  child: Text(number.toString()),
                                ),
                              );
                            }).toList(),
                          );
                        }),
                      ]);
                    },
                  ),
                ),
              );
            }),
            ElevatedButton(onPressed: () {}, child: const Text("採点する"))
          ],
        ));
  }
}
