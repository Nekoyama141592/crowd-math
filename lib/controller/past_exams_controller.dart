import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/constants/past_exams/hokudai_paths.dart';
import 'package:crowd_math/constants/past_exams/kyoto_paths.dart';
import 'package:crowd_math/constants/past_exams/kyushu_paths.dart';
import 'package:crowd_math/constants/past_exams/nagoya_paths.dart';
import 'package:crowd_math/constants/past_exams/osaka_paths.dart';
import 'package:crowd_math/constants/past_exams/tohoku_paths.dart';
import 'package:crowd_math/constants/past_exams/toko_paths.dart';
import 'package:crowd_math/constants/past_exams/tokyo_paths.dart';
import 'package:crowd_math/model/past_exam/past_exam.dart';
import 'package:get/get.dart';

class PastExamsController extends GetxController {
  List<PastExam> getPaths(int year, bool isSciences) {
    final param = Get.parameters["university"];
    if (param == null) {
      return [];
    }
    final univerSity = University.values.byName(param);
    List<Map<String, String>> value = [];
    switch (univerSity) {
      case University.hokudai:
        value = hokudaiPaths;
      case University.kyoto:
        value = kyotoPaths;
      case University.kyushu:
        value = kyushuPaths;
      case University.nagoya:
        value = nagoyaPaths;
      case University.osaka:
        value = osakaPaths;
      case University.tohoku:
        value = tohokuPaths;
      case University.toko:
        value = tokoPaths;
      case University.tokyo:
        value = tokyoPaths;
    }
    final typedValue = value.map((e) => PastExam.fromJson(e)).toList();
    final result = typedValue
        .where((element) => element.title.contains(year.toString()))
        .toList();
    final humanities =
        result.where((element) => element.title.contains("文")).toList();
    if (isSciences) {
      final sciences = result
        ..removeWhere((element) => humanities.contains(element));
      return sciences;
    } else {
      return humanities;
    }
  }
}
