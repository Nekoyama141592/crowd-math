import 'package:crowd_math/app/router.dart';
import 'package:crowd_math/app/themes.dart';
import 'package:crowd_math/view/main/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});
  static const path = "/";
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: F.appFlavor == Flavor.dev,
      title: F.title,
      theme: lightThemeData(context),
      home: const MyHomePage(),
      getPages: getPages,
      initialRoute: path,
    );
  }
}
