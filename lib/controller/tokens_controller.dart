import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:crowd_math/model/local_bookmark_page_path/local_bookmark_page_path.dart';
import 'package:crowd_math/model/local_my_ans_page_path/local_my_ans_page_path.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokensController extends GetxController {
  static TokensController get to => Get.find<TokensController>();
  final rxBookmarks = <LocalBookmarkPagePath>[].obs;
  final rxMyAnswers = <LocalMyAnsPagePath>[].obs;

  @override
  void onInit() {
    _fetchBookmarks();
    _fetchMyAnswers();
    super.onInit();
  }

  Future<void> _fetchBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.bookmarkPagePaths.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    final bookmarks =
        jsonList.map((e) => LocalBookmarkPagePath.fromJson(e)).toList();
    rxBookmarks.value = bookmarks;
  }

  Future<void> _fetchMyAnswers() async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.myAnsPagePaths.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    final results =
        jsonList.map((e) => LocalMyAnsPagePath.fromJson(e)).toList();
    rxMyAnswers.value = results;
  }

  void onUnBookmarkButtonPressed(String pagePath) {
    _unBookmark(pagePath);
  }

  Future<void> _unBookmark(String pagePath) async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.bookmarkPagePaths.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    jsonList.removeWhere((element) {
      final bookmark = LocalBookmarkPagePath.fromJson(element);
      return bookmark.pagePath == pagePath;
    });
    final bookmarks =
        jsonList.map((e) => LocalBookmarkPagePath.fromJson(e)).toList();
    await prefs.setJsonList(key, jsonList);
    rxBookmarks.value = bookmarks;
  }

  void onRemoveImageButtonPressed(String imageID) {
    _removeImage(imageID);
  }

  Future<void> _removeImage(String imageID) async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.myAnsPagePaths.name;
    final jsonList = prefs.getJsonList(key) ?? [];
    jsonList.removeWhere((element) {
      final ans = LocalMyAnsPagePath.fromJson(element);
      return ans.imageID == imageID;
    });
    final answers =
        jsonList.map((e) => LocalMyAnsPagePath.fromJson(e)).toList();
    await Future.wait(
        [prefs.setJsonList(key, jsonList), prefs.remove(imageID)]);
    rxMyAnswers.value = answers;
  }
}
