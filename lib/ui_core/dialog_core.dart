import 'package:crowd_math/controller/center_exam_controller.dart';
import 'package:crowd_math/ui_core/original_dialog.dart';
import 'package:crowd_math/view/components/basic_bold_text.dart';
import 'package:crowd_math/view/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogCore {
  static showGradedDialog(
      {required BuildContext context,
      required String text,
      required int score,
      required double standardScore}) {
    showDialog(
        context: context,
        builder: (innerContext) {
          final fullWidth = MediaQuery.of(context).size.width;
          final scoreStyle = TextStyle(fontSize: fullWidth * 0.1);
          return OriginalDialog(children: [
            BasicBoldText(text),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ScoreBoard(title: "得点", value: "$score", style: scoreStyle),
                ScoreBoard(
                    title: "偏差値", value: "$standardScore", style: scoreStyle),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text("スクショを撮ってSNSでみんなに結果を共有してみよう!!"),
            const SizedBox(
              height: 16.0,
            ),
            RoundedButton(
              text: "結果を保存する",
              press: CenterExamController.to.onSaveScoreButtonPressed,
            ),
            const SizedBox(
              height: 16.0,
            ),
            RoundedButton(
              text: "閉じる",
              press: Get.back,
              buttonColor: Colors.grey,
            )
          ]);
        });
  }
}

class ScoreBoard extends StatelessWidget {
  const ScoreBoard(
      {super.key,
      required this.title,
      required this.value,
      required this.style});
  final String title;
  final String value;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(12.0))),
      child: Column(
        children: [
          Text(title),
          SizedBox(
            width: fullWidth * 0.3,
            child: Center(
                child: Text(
              value,
              style: style,
            )),
          ),
        ],
      ),
    );
  }
}
