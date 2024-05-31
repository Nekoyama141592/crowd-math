import 'dart:typed_data';

import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/controller/tokens_controller.dart';
import 'package:crowd_math/core/file_core.dart';
import 'package:crowd_math/core/id_core.dart';
import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:crowd_math/model/local_bookmark_page_path/local_bookmark_page_path.dart';
import 'package:crowd_math/model/local_my_ans_page_path/local_my_ans_page_path.dart';
import 'package:crowd_math/ui_core/toast_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ExamController {
  Future<void> bookmark(String pagePath) async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.bookmarkPagePaths.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    final bookmark =
        LocalBookmarkPagePath(createdAt: DateTime.now(), pagePath: pagePath);
    final jsonData = bookmark.toJson();
    jsonList.add(jsonData);
    await prefs.setJsonList(key, jsonList);
    TokensController.to.rxBookmarks.add(bookmark);
    ToastCore.showFlutterToast("ブックマークしました", timeInSecForIosWeb: 1);
  }

  void onImageButtonPressed() async {
    final uint8list = await FileCore.getCompressedImage();
    if (uint8list == null) return;
    final pagePath = Get.currentRoute;
    await saveMyAns(pagePath, uint8list);
  }

  Future<void> saveMyAns(String pagePath, Uint8List uint8list) async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.myAnsPagePaths.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    final imageID = IdCore.uuidV4();
    final myAns = LocalMyAnsPagePath(
        createdAt: DateTime.now(), pagePath: pagePath, imageID: imageID);
    final jsonData = myAns.toJson();
    jsonList.add(jsonData);
    await prefs.setJsonList(key, jsonList);
    await prefs.setImage(imageID, uint8list);
    TokensController.to.rxMyAnswers.add(myAns);
    ToastCore.showFlutterToast("回答を保存しました", timeInSecForIosWeb: 1);
  }
}
