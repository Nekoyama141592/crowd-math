import 'package:crowd_math/controller/abstract/center_questions_controller.dart';
import 'package:crowd_math/view/components/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenterQuestionElements extends StatelessWidget {
  const CenterQuestionElements({super.key, required this.controller});
  final CenterQuestionsController controller;
  @override
  Widget build(BuildContext context) {
    return BasicPage(
      child: Obx(() {
        final myAnswerChunks = controller.rxMyAnswerChunks;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: myAnswerChunks.length,
            itemBuilder: (c, i) {
              final myAnswerChunk = myAnswerChunks[i];
              final myAnswers = myAnswerChunk.myAnswers;
              final needFull = myAnswers.length > 1;
              final needFullText = needFull ? "(完答)" : "";
              return Column(children: [
                Text(
                    "問${myAnswerChunk.questionIndexes}, 配点: ${myAnswerChunk.point}$needFullText"),
                ...myAnswers.map((myAnswer) {
                  final j = myAnswers.indexOf(myAnswer);
                  List<int> numbers = List.generate(9, (k) => k + 1);
                  return Row(
                    children: numbers.map((number) {
                      return InkWell(
                          onTap: () => controller.onElementTapped(i, j, number),
                          child: Obx(() {
                            Color? color;
                            final showGradedResult =
                                controller.showGradedResult;
                            final isMyAnswer = number.toString() == myAnswer;
                            if (showGradedResult &&
                                isMyAnswer &&
                                myAnswerChunk.isCorrect()) {
                              color = Colors.green;
                            } else if (showGradedResult &&
                                isMyAnswer &&
                                !myAnswerChunk.isCorrect()) {
                              color = Colors.red;
                            } else if (!showGradedResult && isMyAnswer) {
                              color = Colors.yellow;
                            }

                            return Container(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.036),
                              decoration: BoxDecoration(
                                  border: Border.all(), color: color),
                              child: Text(number.toString()),
                            );
                          }));
                    }).toList(),
                  );
                }),
              ]);
            },
          ),
        );
      }),
    );
  }
}
