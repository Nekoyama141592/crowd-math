import 'dart:typed_data';
import 'package:crowd_math/extensions/custom_date_time_formatting.dart';
import 'package:crowd_math/model/local_image_answer/local_my_ans_page_path.dart';
import 'package:flutter/material.dart';

class MyImaegAnswer extends StatelessWidget {
  const MyImaegAnswer(
      {super.key,
      required this.image,
      required this.answer,
      required this.style});
  final Uint8List image;
  final LocalImageAnswer answer;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(8.0)),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InteractiveViewer(
                minScale: 0.5, maxScale: 8, child: Image.memory(image)),
          ),
          Text(answer.createdAt.japaneseDateTime(), style: style),
        ],
      ),
    );
  }
}
