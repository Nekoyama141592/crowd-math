import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:crowd_math/model/local_bookmark_exam/local_bookmark_page_path.dart';
import 'package:crowd_math/model/local_image_answer/local_my_ans_page_path.dart';
import 'package:crowd_math/model/local_symbol_answer/local_symbol_answer.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokensController extends GetxController {
  static TokensController get to => Get.find<TokensController>();
  final rxBookmarks = <LocalBookmarkExam>[].obs;
  final rxImageAnswers = <LocalImageAnswer>[].obs;
  final rxSymbolAnswers = <LocalSymbolAnswer>[].obs;

  @override
  void onInit() async {
    _fetchTokens();
    super.onInit();
  }

  Future<void> _fetchTokens() async {
    final prefs = await SharedPreferences.getInstance();
    for (final prefsKey in PrefsKey.values) {
      final keyName = prefsKey.name;
      final jsonList = prefs.getJsonList(keyName) ?? [];
      switch (prefsKey) {
        case PrefsKey.bookmarkExams:
          rxBookmarks.value =
              jsonList.map((e) => LocalBookmarkExam.fromJson(e)).toList();
          break;
        case PrefsKey.imageAnswers:
          rxImageAnswers.value =
              jsonList.map((e) => LocalImageAnswer.fromJson(e)).toList();
          break;
        case PrefsKey.symbolAnswers:
          rxSymbolAnswers.value =
              jsonList.map((e) => LocalSymbolAnswer.fromJson(e)).toList();
          break;
      }
    }
  }

  void onUnBookmarkButtonPressed(String pagePath) {
    _unBookmark(pagePath);
  }

  Future<void> _unBookmark(String pagePath) async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.bookmarkExams.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    jsonList.removeWhere((element) {
      final bookmark = LocalBookmarkExam.fromJson(element);
      return bookmark.pagePath == pagePath;
    });
    final bookmarks =
        jsonList.map((e) => LocalBookmarkExam.fromJson(e)).toList();
    await prefs.setJsonList(key, jsonList);
    rxBookmarks.value = bookmarks;
  }

  void onRemoveImageButtonPressed(String imageID) {
    _removeImage(imageID);
  }

  Future<void> _removeImage(String imageID) async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.imageAnswers.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    jsonList.removeWhere((element) {
      final ans = LocalImageAnswer.fromJson(element);
      return ans.imageID == imageID;
    });
    final answers = jsonList.map((e) => LocalImageAnswer.fromJson(e)).toList();
    await Future.wait(
        [prefs.setJsonList(key, jsonList), prefs.remove(imageID)]);
    rxImageAnswers.value = answers;
  }

  void onRemoveSymbolAnswerButtonPressed(String symbolID) {}
  Future<void> removeSymbolAnswer(String symbolID) async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.symbolAnswers.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    jsonList.removeWhere((element) {
      final ans = LocalSymbolAnswer.fromJson(element);
      return ans.id == symbolID;
    });
    final answers = jsonList.map((e) => LocalSymbolAnswer.fromJson(e)).toList();
    await prefs.setJsonList(key, jsonList);
    rxSymbolAnswers.value = answers;
  }
}
