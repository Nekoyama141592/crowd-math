import 'package:crowd_math/app/bottom_navigation_bar_items.dart';
import 'package:crowd_math/view/main/center_exam/center_exam_years_screen.dart';
import 'package:crowd_math/view/main/university/university_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyHomePage extends HookWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageIndex = useState(0);
    final PageController pageController = usePageController();
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
            SizedBox(),
            CenterExamYearsScreen(),
            UniversityScreen(),
            SizedBox(),
          ],
        ));
  }
}
