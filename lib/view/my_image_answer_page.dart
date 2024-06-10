import 'package:crowd_math/controller/my_answer_image_controller.dart';
import 'package:crowd_math/model/local_image_answer/local_my_ans_page_path.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class MyImageAnswerPage extends HookWidget {
  const MyImageAnswerPage({super.key, required this.localImageAnswer});
  final LocalImageAnswer localImageAnswer;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyAnswerImageController());
    useEffect(() {
      final imageID = localImageAnswer.imageID;
      controller.init(imageID);
      return controller.close;
    }, []);
    return BasicPage(
        appBar: AppBar(
          title: Text(localImageAnswer.pageTitle),
        ),
        child: Obx(() {
          final image = controller.rxImage.value;
          if (image == null) {
            return SizedBox.fromSize();
          } else {
            return Column(
              children: [
                Image.memory(image),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(localImageAnswer.pagePath);
                    },
                    child: const Text("問題へ"))
              ],
            );
          }
        }));
  }
}
