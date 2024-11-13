import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/bottom_navi_bar/bottom_navi_bar.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNaviBarController bottomNaviBarController =
        Get.put(BottomNaviBarController());
    return Scaffold(
      body: PageView(
        controller: bottomNaviBarController.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(bottomNaviBarController.bottomBarPage.length,
            (index) => bottomNaviBarController.bottomBarPage[index]),
      ),
    );
  }
}
