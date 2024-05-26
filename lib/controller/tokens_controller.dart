import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:crowd_math/model/local_bookmark_page_path/local_bookmark_page_path.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokensController extends GetxController {
  static TokensController get to => Get.find<TokensController>();
  final rxBookmarks = <LocalBookmarkPagePath>[].obs;

  @override
  void onInit() {
    _fetchBookmarks();
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
}
