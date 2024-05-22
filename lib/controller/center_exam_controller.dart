import 'package:crowd_math/constants/center_exam_paths.dart';
import 'package:get/get.dart';

class CenterExamController extends GetxController {
  final rxPaths = <String>[].obs;
  void init(String year, String subject) {
    rxPaths.value = centerExamPaths().where((path) {
      return path.contains(year) && path.contains(subject);
    }).toList();
  }
}
