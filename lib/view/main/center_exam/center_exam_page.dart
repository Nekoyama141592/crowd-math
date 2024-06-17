import 'package:cached_network_image/cached_network_image.dart';
import 'package:crowd_math/controller/center_exam_controller.dart';
import 'package:crowd_math/core/page_titile_core.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:crowd_math/view/components/center_question_elements.dart';
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
    const tabTitles = ["問題と解答", "採点"];
    return DefaultTabController(
      length: tabTitles.length,
      child: BasicPage(
          appBar: AppBar(
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                tabs: tabTitles.map((title) => Tab(text: title)).toList()),
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
          child: TabBarView(children: [
            Obx(() {
              final urls = controller.rxUrls;
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: urls.map((e) {
                    return CachedNetworkImage(
                      imageUrl: e,
                      placeholder: (context, url) => SizedBox(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: const CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    );
                  }).toList(),
                ),
              );
            }),
            Column(
              children: [
                Expanded(child: CenterQuestionElements(controller: controller)),
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
            )
          ])),
    );
  }
}
