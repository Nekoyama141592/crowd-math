import 'package:crowd_math/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingController());
    return ListView(
      children: [
        ListTile(
          onTap: controller.onRemoveBookmarksButtonPressed,
          title: const Text(
            "ブックマークの履歴を削除",
          ),
        ),
        const Divider(),
        ListTile(
          onTap: controller.onRemoveImageAnswersButtonPressed,
          title: const Text("画像答案の履歴を削除"),
        ),
        const Divider(),
        ListTile(
          onTap: controller.onRemoveSymbolAnswersButtonPressed,
          title: const Text("採点結果の履歴を削除"),
        ),
      ],
    );
  }
}
