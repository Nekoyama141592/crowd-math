import 'dart:typed_data';

import 'package:crowd_math/model/local_image_answer/local_my_ans_page_path.dart';

class MyAnswerImageWrapper {
  const MyAnswerImageWrapper(
      {required this.localImageAnswer, required this.image});
  final LocalImageAnswer localImageAnswer;
  final Uint8List image;
}
