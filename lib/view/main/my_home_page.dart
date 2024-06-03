import 'package:crowd_math/app/bottom_navigation_bar_items.dart';
import 'package:crowd_math/controller/tokens_controller.dart';
import 'package:crowd_math/view/main/center_exam/center_exam_years_screen.dart';
import 'package:crowd_math/view/main/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class MyHomePage extends HookWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageIndex = useState(0);
    final PageController pageController = usePageController();
    Get.put(TokensController());
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: bnbItems,
            currentIndex: pageIndex.value,
            onTap: (index) {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn);
            }),
        body: PageView(
          onPageChanged: (index) => pageIndex.value = index,
          controller: pageController,
          children: const [
            HomeScreen(),
            CenterExamYearsScreen(),
            SizedBox(),// UniversityScreen
          ],
        ));
  }
}
