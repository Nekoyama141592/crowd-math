import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/controller/abstract/center_questions_controller.dart';
import 'package:crowd_math/controller/tokens_controller.dart';
import 'package:crowd_math/core/id_core.dart';
import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:crowd_math/model/local_symbol_answer/local_symbol_answer.dart';
import 'package:crowd_math/ui_core/toast_core.dart';
import 'package:crowd_math/view/my_image_answers_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:crowd_math/constants/center_exam/center_answers.dart';
import 'package:crowd_math/constants/center_exam/center_exam_paths.dart';
import 'package:crowd_math/constants/center_exam/center_exam_subject_constant.dart';
import 'package:crowd_math/model/center_answer/center_answer.dart';
import 'package:crowd_math/model/center_exam/answer_chunk/answer_chunk.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CenterExamController extends CenterQuestionsController {
  final rxIsGradeMode = false.obs;
  final rxPaths = <String>[].obs;
  final rxGradedPoint = 0.obs;
  final rxFullPoint = 0.obs;
  void init(String year, String subject) {
    _setPaths(year, subject);
    _setAnswers(year, subject);
  }

  void close() {
    rxPaths([]);
    rxMyAnswerChunks([]);
    rxIsGradeMode(false);
    rxGradedPoint(0);
    rxFullPoint(0);
  }

  @override
  // TODO: implement showAnswer
  bool get showGradedResult => rxIsGradeMode.value;

  void _setPaths(String year, String subject) {
    rxPaths.value = centerExamPaths().where((path) {
      final intYear = int.parse(year);
      if (intYear < 2021) {
        return path.contains(year) && path.contains(subject);
      } else {
        return path.contains(subject);
      }
    }).toList();
  }

  void _setAnswers(String year, String subject) {
    final name = CenterExamSubjectConstant.all
        .firstWhere((element) => element.subject == subject)
        .subjectName;
    final answers = centerAnswers()
        .map((e) => CenterAnswer.fromJson(e))
        .toList()
        .where((element) =>
            element.title.contains(year) && element.subject == name)
        .toList();
    if (answers.isEmpty) return;
    final answer = answers.first;
    int startIndex = 1;
    for (final e in answer.pointAllocations) {
      final point = e.point;
      final correctAnswers = e.answers;
      final myAnswers = correctAnswers.map((e) => "").toList();
      final questionIndexes =
          List.generate(correctAnswers.length, (index) => startIndex + index);
      final result = AnswerChunk(
          point: point,
          questionIndexes: questionIndexes,
          correctAnswers: correctAnswers,
          myAnswers: myAnswers);
      rxMyAnswerChunks.add(result);
      startIndex += correctAnswers.length;
    }
  }

  @override
  void onElementTapped(int i, int j, int number) {
    if (rxIsGradeMode.value) return;
    List<String> answers = List.from(rxMyAnswerChunks[i].myAnswers);
    answers[j] = number.toString();
    rxMyAnswerChunks[i] = rxMyAnswerChunks[i].copyWith(myAnswers: answers);
  }

  void onGradeButtonPressed() {
    if (rxIsGradeMode.value) return;
    rxIsGradeMode(true);
    int gradedPoint = 0;
    int fullPoint = 0;
    for (final myAnswerChunk in rxMyAnswerChunks) {
      final point = myAnswerChunk.point;
      fullPoint += point;
      if (myAnswerChunk.isCorrect()) {
        gradedPoint += point;
      }
    }
    rxGradedPoint(gradedPoint);
    rxFullPoint(fullPoint);
    _saveSymbolImageAns();
  }

  void onDescriptionButtonPressed(BuildContext context) {
    final imageIDs = TokensController.to.rxImageAnswers
        .where((p0) => p0.pagePath == Get.currentRoute)
        .map((e) => e.imageID)
        .toList();
    Navigator.pop(context);
    Get.to(MyImageAnswersPage(imageIDs: imageIDs));
  }

  void onCheckButtonPressed(BuildContext context) {}

  void onMenuPressed(BuildContext context, String currentRoute) {
    showCupertinoModalPopup(
        context: context,
        builder: (innerContext) {
          return CupertinoActionSheet(
            actions: [
              CupertinoActionSheetAction(
                  onPressed: () {
                    onImageButtonPressed(context);
                  },
                  child: const Text("写真で回答を保存")),
              CupertinoActionSheetAction(
                  onPressed: () {
                    onDescriptionButtonPressed(context);
                  },
                  child: const Text("写真の回答を見る")),
              CupertinoActionSheetAction(
                  onPressed: () {
                    bookmark(context, currentRoute);
                  },
                  child: const Text("ブックマーク")),
              CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("戻る")),
            ],
          );
        });
  }

  Future<void> _saveSymbolImageAns() async {
    final pagePath = Get.currentRoute;
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.symbolAnswers.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    final answerChunks =
        rxMyAnswerChunks.map((element) => element.toJson()).toList();
    final id = IdCore.uuidV4();
    final myAns = LocalSymbolAnswer(
        id: id,
        createdAt: DateTime.now(),
        pagePath: pagePath,
        answerChunks: answerChunks);
    final jsonData = myAns.toJson();
    jsonList.add(jsonData);
    await prefs.setJsonList(key, jsonList);
    TokensController.to.rxSymbolAnswers.add(myAns);
    ToastCore.showFlutterToast("採点結果を保存しました", timeInSecForIosWeb: 1);
  }
}
