import 'package:crowd_math/controller/symbol_answer_controller.dart';
import 'package:crowd_math/extensions/custom_date_time_formatting.dart';
import 'package:crowd_math/model/center_exam/answer_chunk/answer_chunk.dart';
import 'package:crowd_math/model/local_symbol_answer/local_symbol_answer.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:crowd_math/view/components/center_question_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SymbolAnswerPage extends HookWidget {
  const SymbolAnswerPage({super.key, required this.localSymbolAnswer});
  final LocalSymbolAnswer localSymbolAnswer;
  @override
  Widget build(BuildContext context) {
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
            Text(
                "${localSymbolAnswer.gradedPoint()}/${localSymbolAnswer.fullPoint()} 日時:${localSymbolAnswer.createdAt.japaneseDateTime()}"),
            Expanded(child: CenterQuestionElements(controller: controller)),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(localSymbolAnswer.pagePath);
                },
                child: const Text("問題へ"))
          ],
        ));
  }
}
