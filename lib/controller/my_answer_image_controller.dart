import 'dart:typed_data';

import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAnswerImageController extends GetxController {
  final rxImages = <Uint8List?>[].obs;
  void init(List<String> imageIDs) async {
    final prefs = await SharedPreferences.getInstance();
    for (final imageID in imageIDs) {
      rxImages.add(prefs.getImage(imageID));
    }
  }

  void close() {
    rxImages.value = [];
  }
}
