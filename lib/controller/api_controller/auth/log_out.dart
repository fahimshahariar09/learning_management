import 'package:flutter/cupertino.dart';

class LogOutService {
  static Future<bool> logoutService() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      return true;
    } catch (e) {
      debugPrint("error $e");
    }
    return false;
  }
}
