import 'package:crowd_math/constants/center_exam/center_exam_subject_constant.dart';
import 'package:crowd_math/constants/past_exams/university_keys.dart';
import 'package:crowd_math/core/center_or_kyotsu.dart';
import 'package:crowd_math/view/main/center_exam/center_exam_page.dart';
import 'package:crowd_math/view/main/university/past_exams_page.dart';

class PageTitleCore {
  static String getUniversityName(String university) =>
      universityKeys.firstWhere((element) => element.key == university).name;
  static String getSubjectName(String subject) => CenterExamSubjectConstant.all
      .firstWhere((element) => element.subject == subject)
      .subjectName;
  static String pageTitleFromPagePath(String pagePath) {
    final splitPagePath = pagePath.split("/");
    splitPagePath.removeAt(0);
    if (splitPagePath.isEmpty) {
      return "";
    }
    final prefix = splitPagePath[0];
    if (prefix == CenterExamPage.path.split("/")[1]) {
      final year = splitPagePath[1];
      final centerOrKyotsu = CenterOrKyotsu.text(year);
      final subject = splitPagePath[2];
      final subjectName = getSubjectName(subject);
      return "$centerOrKyotsu $year年 $subjectName";
    } else if (prefix == PastExamsPage.path.split("/")[1]) {
      final university = splitPagePath[1];
      final universityName = getUniversityName(university);
      final year = splitPagePath[2];
      final isScience = splitPagePath[3];
      final humanitiesOrScience = (isScience == true.toString()) ? "理系" : "文系";
      return "$universityName $year年 $humanitiesOrScience";
    } else {
      return "";
    }
  }
}
