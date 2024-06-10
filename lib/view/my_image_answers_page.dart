import 'package:crowd_math/controller/my_answer_images_controller.dart';
import 'package:crowd_math/extensions/custom_date_time_formatting.dart';
import 'package:crowd_math/model/local_image_answer/local_my_ans_page_path.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class MyImageAnswersPage extends HookWidget {
  const MyImageAnswersPage({super.key, required this.myImageAnswers});
  final List<LocalImageAnswer> myImageAnswers;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyAnswerImagesController());
    useEffect(() {
      controller.init(myImageAnswers);
      return controller.close;
    }, []);
    return BasicPage(
        appBar: AppBar(
          title: const Text("自分の回答一覧"),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Obx(() {
            final wrappers = controller.rxWrappers;
            if (wrappers.isEmpty) {
              return const Align(
                alignment: Alignment.center,
                child: Text("回答はまだありません"),
              );
            }
            return Column(
              children: [
                Text(wrappers.first.localImageAnswer.pageTitle),
                Expanded(
                  child: ListView(
                    children: wrappers.map((wrapper) {
                      final image = wrapper.image;
                      final answer = wrapper.localImageAnswer;
                      return Column(
                        children: [
                          Image.memory(image),
                          Text(answer.createdAt.japaneseDateTime()),
                        ],
                      );
                    }).toList(),
                  ),
                )
              ],
            );
          }),
        ));
  }
}
