import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart' as fluttertoast;
import 'package:get/get.dart';

class ToastCore {
  static Future<void> showFlutterToast(String msg,
      {int timeInSecForIosWeb = 5}) async {
    await fluttertoast.Fluttertoast.showToast(
        msg: msg, timeInSecForIosWeb: timeInSecForIosWeb);
  }

  static Future<void> showErrorFlutterToast(String msg,
      {int timeInSecForIosWeb = 5}) async {
    await fluttertoast.Fluttertoast.showToast(
        msg: msg,
        timeInSecForIosWeb: timeInSecForIosWeb,
        backgroundColor: Colors.red);
  }

  static void cupertinoAlertDialog(
      String msg, void Function()? positiveAction) {
    Get.dialog(CupertinoAlertDialog(
      content: Text(msg),
      actions: [
        CupertinoDialogAction(onPressed: Get.back, child: const Text("キャンセル")),
        CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: positiveAction,
            child: const Text("OK"))
      ],
    ));
  }
}
