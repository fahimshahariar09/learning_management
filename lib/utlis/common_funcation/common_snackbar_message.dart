import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonSnackBarMessage {
  static noInternetConnection() {
    Get.snackbar("you a`re offline !!", "please check internet connection",
        backgroundColor: Colors.red,
        colorText: Colors.redAccent,
        snackStyle: SnackStyle.FLOATING,
        duration: const Duration(seconds: 2),
        overlayBlur: 5,
        icon: const Icon(
          Icons.wifi_off_outlined,
          color: Colors.red,
        ),
        snackPosition: SnackPosition.TOP);
  }

  static errorMessage({String? titel, required String text}) {
    Get.snackbar(titel ?? "message", text,
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 2),
        overlayBlur: 5,
        icon: const Icon(
          Icons.wifi_off_outlined,
          color: Colors.red,
        ),
        snackPosition: SnackPosition.TOP);
  }

  static successMessage() {
    Get.snackbar("you a`re offline !!", "please check internet connection",
        backgroundColor: Colors.red,
        colorText: Colors.redAccent,
        snackStyle: SnackStyle.FLOATING,
        duration: const Duration(seconds: 2),
        overlayBlur: 5,
        icon: const Icon(
          Icons.wifi_off_outlined,
          color: Colors.red,
        ),
        snackPosition: SnackPosition.TOP);
  }
}
