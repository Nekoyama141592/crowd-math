import 'package:cached_network_image/cached_network_image.dart';
import 'package:crowd_math/controller/center_exam_controller.dart';
import 'package:crowd_math/core/page_titile_core.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:crowd_math/view/components/center_question_elements.dart';
import 'package:crowd_math/view/components/rounded_button.dart';
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
    const style = TextStyle(fontSize: 24.0);
    const miniStyle = TextStyle(fontSize: 20.0);
    useEffect(() {
      if (year == null || subject == null) return controller.close;
      controller.init(year, subject);
      return controller.close;
    }, []);
    return SizedBox(
      child: BasicPage(
          appBar: AppBar(
            title: Text(PageTitleCore.pageTitleFromPagePath(Get.currentRoute)),
            actions: [
              InkWell(
                  onTap: () =>
                      controller.onMenuPressed(context, Get.currentRoute),
                  child: const Icon(
                    Icons.menu,
                  )),
              const SizedBox(
                width: 16.0,
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              Obx(() {
                final urls = controller.rxUrls;
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: urls.map((e) {
                      return InteractiveViewer(
                        minScale: 1,
                        maxScale: 7,
                        child: CachedNetworkImage(
                          imageUrl: e,
                          placeholder: (context, url) => SizedBox(
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: const SizedBox(
                              height: 60.0,
                              width: 60.0,
                              child: Align(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      );
                    }).toList(),
                  ),
                );
              }),
              Column(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: CenterQuestionElements(controller: controller)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(() {
                      final isGradedMode = controller.rxIsGradeMode;
                      if (isGradedMode.value) {
                        final gradedPoint = controller.rxGradedPoint;
                        final fullPoint = controller.rxFullPoint;
                        final standardScore = controller.standardScore;
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "得点: ${gradedPoint.value}/${fullPoint.value}",
                              style: style,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "偏差値 $standardScore",
                              style: style,
                            ),
                          ],
                        );
                      } else {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() {
                              final result =
                                  controller.rxStatisticsResult.value;
                              return Column(
                                children: [
                                  Text(
                                    "平均点: ${result.average}",
                                    style: miniStyle,
                                  ),
                                  Text(
                                    "標準偏差: ${result.standardDeviation}",
                                    style: miniStyle,
                                  )
                                ],
                              );
                            }),
                            const SizedBox(width: 20.0,),
                            RoundedButton(
                              text: "採点する",
                              widthRate: 0.3,
                              press: () =>
                                  controller.onGradeButtonPressed(context),
                            )
                          ],
                        );
                      }
                    }),
                  )
                ],
              )
            ]),
          )),
    );
  }
}
