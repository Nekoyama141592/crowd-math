import 'package:crowd_math/constants/enums.dart';
import 'package:crowd_math/controller/tokens_controller.dart';
import 'package:crowd_math/extensions/shared_preferences_extension.dart';
import 'package:crowd_math/model/local_bookmark_page_path/local_bookmark_page_path.dart';
import 'package:crowd_math/ui_core/toast_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ExamController {
  Future<List<Map<String, dynamic>>> bookmark(String pagePath) async {
    final prefs = await SharedPreferences.getInstance();
    final key = PrefsKey.bookmarkPagePaths.name;
    final bookmarkJsonList = prefs.getJsonList(key) ?? [];
    final bookmark =
        LocalBookmarkPagePath(createdAt: DateTime.now(), pagePath: pagePath);
    final jsonData = bookmark.toJson();
    final jsonList = bookmarkJsonList..add(jsonData);
    await prefs.setJsonList(key, jsonList);
    TokensController.to.rxBookmarks.add(bookmark);
    ToastCore.showFlutterToast("ブックマークしました", timeInSecForIosWeb: 1);
    return jsonList;
  }
}
