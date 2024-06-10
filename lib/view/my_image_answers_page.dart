import 'package:crowd_math/controller/my_answer_image_controller.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class MyImageAnswersPage extends HookWidget {
  const MyImageAnswersPage({super.key, required this.imageIDs});
  final List<String> imageIDs;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyAnswerImageController());
    useEffect(() {
      controller.init(imageIDs);
      return controller.close;
    }, []);
    return BasicPage(
        appBar: AppBar(
          title: const Text("自分の回答"),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Obx(() {
            final images = controller.rxImages;
            if (images.isEmpty) {
              return const Align(
                alignment: Alignment.center,
                child: Text("回答はまだありません"),
              );
            }
            return Column(
              children: images.map((bytes) {
                if (bytes == null) {
                  return const SizedBox.shrink();
                } else {
                  return Image.memory(bytes);
                }
              }).toList(),
            );
          }),
        ));
  }
}
