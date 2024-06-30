import 'package:flutter/material.dart';

class BasicBoldText extends StatelessWidget {
  const BasicBoldText(this.text, {super.key, this.textColor});
  final String text;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textColor, fontWeight: FontWeight.bold, fontSize: 20.0),
    );
  }
}
