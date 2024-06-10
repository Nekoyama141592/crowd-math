import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:crowd_math/model/local_image_answer/local_my_ans_page_path.dart';
import 'package:crowd_math/model/my_answer_image_wrapper/my_answer_image_wrapper.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAnswerImagesController extends GetxController {
  final rxWrappers = <MyAnswerImageWrapper>[].obs;
  void init(List<LocalImageAnswer> myImageAnswers) async {
    final prefs = await SharedPreferences.getInstance();
    for (final answer in myImageAnswers) {
      final imageID = answer.imageID;
      final image = prefs.getImage(imageID);
      if (image == null) return;
      final wrapper =
          MyAnswerImageWrapper(localImageAnswer: answer, image: image);
      rxWrappers.add(wrapper);
    }
  }

  void close() {
    rxWrappers.value = [];
  }
}
