import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/controller/tokens_controller.dart';
import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:crowd_math/model/local_image_answer/local_my_ans_page_path.dart';
import 'package:crowd_math/ui_core/toast_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingController extends GetxController {
  void onRemoveBookmarksButtonPressed() async {
    ToastCore.cupertinoAlertDialog("ブックマークの履歴を削除しますがよろしいですか", _removeBookmarks);
  }

  Future<void> _removeBookmarks() async {
    final key = PrefsKey.bookmarkExams.name;
    await _remove(key);
    TokensController.to.rxBookmarks([]);
  }

  void onRemoveImageAnswersButtonPressed() async {
    ToastCore.cupertinoAlertDialog(
        "画像答案の履歴を削除しますがよろしいですか", _removeImageAnswers);
  }

  Future<void> _removeImageAnswers() async {
    final key = PrefsKey.imageAnswers.name;
    await _remove(key);
    TokensController.to.rxImageAnswers([]);
  }

  void onRemoveSymbolAnswersButtonPressed() async {
    ToastCore.cupertinoAlertDialog(
        "採点結果の履歴を削除しますがよろしいですか", _removeSymbolAnswers);
  }

  Future<void> _removeSymbolAnswers() async {
    final key = PrefsKey.symbolAnswers.name;
    await _remove(key);
    TokensController.to.rxSymbolAnswers([]);
  }

  Future<void> _remove(String key) async {
    Get.back();
    final prefs = await SharedPreferences.getInstance();
    if (key == PrefsKey.imageAnswers.name) {
      await _removeImages(prefs, key);
    }
    await prefs.remove(key);
    _onSuccess();
  }

  Future<void> _removeImages(SharedPreferences prefs, String key) async {
    final jsonList = prefs.getJsonList(key);
    if (jsonList != null) {
      for (final jsonData in jsonList) {
        final answer = LocalImageAnswer.fromJson(jsonData);
        final imageID = answer.imageID;
        await prefs.remove(imageID);
      }
    }
  }

  void _onSuccess() {
    ToastCore.showFlutterToast("履歴の削除に成功しました！");
  }
}
