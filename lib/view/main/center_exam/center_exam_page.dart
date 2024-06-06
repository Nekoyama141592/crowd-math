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
      if (year == null || subject == null) return controller.close;
      controller.init(year, subject);
      return controller.close;
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
              final myAnswerChunks = controller.rxMyAnswerChunks;
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: myAnswerChunks.length,
                    itemBuilder: (c, i) {
                      final myAnswerChunk = myAnswerChunks[i];
                      final myAnswers = myAnswerChunk.myAnswers;
                      final needFull = myAnswers.length > 1;
                      final needFullText = needFull ? "(完答)" : "";
                      return Column(children: [
                        Text(
                            "問${i + 1}, 配点: ${myAnswerChunk.point}$needFullText"),
                        ...myAnswers.map((myAnswer) {
                          final j = myAnswers.indexOf(myAnswer);
                          List<int> numbers = List.generate(9, (k) => k + 1);
                          return Row(
                            children: numbers.map((number) {
                              return InkWell(
                                  onTap: () =>
                                      controller.onElementTapped(i, j, number),
                                  child: Obx(() {
                                    Color? color;
                                    final isGradedMode =
                                        controller.rxIsGradeMode.value;
                                    final isMyAnswer =
                                        number.toString() == myAnswer;
                                    if (isGradedMode &&
                                        isMyAnswer &&
                                        myAnswerChunk.isCorrect()) {
                                      color = Colors.green;
                                    } else if (isGradedMode &&
                                        isMyAnswer &&
                                        !myAnswerChunk.isCorrect()) {
                                      color = Colors.red;
                                    } else if (!isGradedMode && isMyAnswer) {
                                      color = Colors.yellow;
                                    }

                                    return Container(
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(), color: color),
                                      child: Text(number.toString()),
                                    );
                                  }));
                            }).toList(),
                          );
                        }),
                      ]);
                    },
                  ),
                ),
              );
            }),
            Obx(() {
              final isGradedMode = controller.rxIsGradeMode;
              if (isGradedMode.value) {
                final gradedPoint = controller.rxGradedPoint;
                final fullPoint = controller.rxFullPoint;
                return Text("得点: ${gradedPoint.value}/${fullPoint.value}");
              } else {
                return ElevatedButton(
                    onPressed: controller.onGradeButtonPressed,
                    child: const Text("採点する"));
              }
            })
          ],
        ));
  }
}
