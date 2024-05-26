import 'package:crowd_math/controller/tokens_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = TokensController.to;
    return SafeArea(
      child: Column(
        children: [
          const Text("ブックマーク"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Obx(() {
              final bookmarks = controller.rxBookmarks;
              return ListView(
                children: bookmarks
                    .map((bookmark) => ListTile(
                          title: Text(bookmark.pageTitle),
                          subtitle: Text(bookmark.createdAt.toString()),
                          onTap: () => Get.toNamed(bookmark.pagePath),
                          trailing: InkWell(
                            onTap: () => controller
                                .onUnBookmarkButtonPressed(bookmark.pagePath),
                            child: const Icon(Icons.delete),
                          ),
                        ))
                    .toList(),
              );
            }),
          )
        ],
      ),
    );
  }
}
