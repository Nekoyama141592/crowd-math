import 'package:crowd_math/controller/tokens_controller.dart';
import 'package:crowd_math/extensions/custom_date_time_formatting.dart';
import 'package:crowd_math/view/my_image_answer_page.dart';
import 'package:crowd_math/view/symbol_answer_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = TokensController.to;
    const h2Style = TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);
    const pStyle = TextStyle(fontSize: 18.0);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                "ブックマーク",
                style: h2Style,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Obx(() {
                  final bookmarks = controller.rxBookmarks;
                  if (bookmarks.isEmpty) {
                    return const Align(
                      alignment: Alignment.center,
                      child:
                          Text("ますは問題の画面右上のメニューからブックマークしてみよう！", style: pStyle),
                    );
                  }
                  return ListView(
                    children: bookmarks
                        .map((bookmark) => ListTile(
                              title: Text(bookmark.pageTitle),
                              subtitle:
                                  Text(bookmark.createdAt.japaneseDateTime()),
                              onTap: () => Get.toNamed(bookmark.pagePath),
                              trailing: InkWell(
                                onTap: () =>
                                    controller.onUnBookmarkButtonPressed(
                                        bookmark.pagePath),
                                child: const Icon(Icons.delete),
                              ),
                            ))
                        .toList(),
                  );
                }),
              ),
              const Text("自分の回答", style: h2Style),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Obx(() {
                  final myAnswers = controller.rxImageAnswers;
                  if (myAnswers.isEmpty) {
                    return const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "ますは問題の画面右上のメニューから画像の回答を保存してみよう！",
                        style: pStyle,
                      ),
                    );
                  }
                  return ListView(
                    children: myAnswers
                        .map((myAnswer) => ListTile(
                              title: Text(myAnswer.pageTitle),
                              subtitle:
                                  Text(myAnswer.createdAt.japaneseDateTime()),
                              onTap: () => Get.to(MyImageAnswerPage(
                                  localImageAnswer: myAnswer)),
                              trailing: InkWell(
                                onTap: () =>
                                    controller.onRemoveImageButtonPressed(
                                        myAnswer.imageID),
                                child: const Icon(Icons.delete),
                              ),
                            ))
                        .toList(),
                  );
                }),
              ),
              const Text("採点結果", style: h2Style),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Obx(() {
                  final myAnswers = controller.rxSymbolAnswers;
                  if (myAnswers.isEmpty) {
                    return const Align(
                      alignment: Alignment.center,
                      child: Text("ますは採点の画面から採点をおこなってみよう！", style: pStyle),
                    );
                  }
                  return ListView(
                    children: myAnswers
                        .map((myAnswer) => ListTile(
                              title: Text(
                                  "${myAnswer.pageTitle}: ${myAnswer.gradedPoint()}/${myAnswer.fullPoint()}"),
                              subtitle:
                                  Text(myAnswer.createdAt.japaneseDateTime()),
                              onTap: () => Get.to(SymbolAnswerPage(
                                  localSymbolAnswer: myAnswer)),
                              trailing: InkWell(
                                onTap: () => controller
                                    .onRemoveSymbolAnswerButtonPressed(
                                        myAnswer.id),
                                child: const Icon(Icons.delete),
                              ),
                            ))
                        .toList(),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
