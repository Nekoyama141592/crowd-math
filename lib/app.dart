import 'package:crowd_math/app/themes.dart';
import 'package:crowd_math/view/main/my_home_page.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: F.appFlavor == Flavor.dev,
      title: F.title,
      theme: lightThemeData(context),
      home: const MyHomePage(),
    );
  }

}
