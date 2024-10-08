import 'dart:typed_data';

import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAnswerImageController extends GetxController {
  final rxImage = Rx<Uint8List?>(null);
  void init(String imageID) async {
    final prefs = await SharedPreferences.getInstance();
    final image = prefs.getImage(imageID);
    rxImage(image);
  }

  void close() {
    rxImage.value = null;
  }
}
