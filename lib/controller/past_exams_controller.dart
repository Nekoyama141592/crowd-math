import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/constants/past_exams/hokudai_paths.dart';
import 'package:crowd_math/constants/past_exams/kyoto_paths.dart';
import 'package:crowd_math/constants/past_exams/kyushu_paths.dart';
import 'package:crowd_math/constants/past_exams/nagoya_paths.dart';
import 'package:crowd_math/constants/past_exams/osaka_paths.dart';
import 'package:crowd_math/constants/past_exams/tohoku_paths.dart';
import 'package:crowd_math/constants/past_exams/toko_paths.dart';
import 'package:crowd_math/constants/past_exams/tokyo_paths.dart';
import 'package:get/get.dart';

class PastExamsController extends GetxController {
  List<String> getPaths() {
    final param = Get.parameters["university"];
    if (param == null) {
      return [];
    }
    final univerSity = University.values.byName(param);
    switch (univerSity) {
      case University.hokudai:
        return hokudaiPaths;
      case University.kyoto:
        return kyotoPaths;
      case University.kyushu:
        return kyushuPaths;
      case University.nagoya:
        return nagoyaPaths;
      case University.osaka:
        return osakaPaths;
      case University.tohoku:
        return tohokuPaths;
      case University.toko:
        return tokoPaths;
      case University.tokyo:
        return tokyoPaths;
    }
  }
}
