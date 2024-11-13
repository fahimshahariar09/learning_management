import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNaviBarController extends GetxController{
  final pageController = PageController(initialPage:0);
  final NotchBottomBarController nController = NotchBottomBarController(index: 0);
  RxInt index = 0.obs;
  RxInt maxCount =3.obs;
}