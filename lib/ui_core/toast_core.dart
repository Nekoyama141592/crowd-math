import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart' as fluttertoast;

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
}
