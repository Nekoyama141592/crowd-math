import 'package:crowd_math/controller/symbol_answer_controller.dart';
import 'package:crowd_math/extensions/custom_date_time_formatting.dart';
import 'package:crowd_math/model/center_exam/answer_chunk/answer_chunk.dart';
import 'package:crowd_math/model/local_symbol_answer/local_symbol_answer.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:crowd_math/view/components/center_question_elements.dart';
import 'package:crowd_math/view/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SymbolAnswerPage extends HookWidget {
  const SymbolAnswerPage({super.key, required this.localSymbolAnswer});
  final LocalSymbolAnswer localSymbolAnswer;
  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);
    final controller = Get.put(SymbolAnswerController());
    useEffect(() {
      final answerChunks = localSymbolAnswer.answerChunks
          .map((e) => AnswerChunk.fromJson(e))
          .toList();
      controller.init(answerChunks);
      return controller.close;
    }, []);
    return BasicPage(
        appBar: AppBar(
          title: Text(localSymbolAnswer.pageTitle),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "得点: ${localSymbolAnswer.gradedPoint()}/${localSymbolAnswer.fullPoint()}",
                    style: style,
                  ),
                  Text("偏差値: ${localSymbolAnswer.standardScore}", style: style),
                ],
              ),
            ),
            Text("日時:${localSymbolAnswer.createdAt.japaneseDateTime()}",
                style: style),
            Expanded(child: CenterQuestionElements(controller: controller)),
            RoundedButton(
              text: "問題へ",
              press: () {
                Get.toNamed(localSymbolAnswer.pagePath);
              },
              widthRate: 0.4,
            )
          ],
        ));
  }
}
