import 'package:flutter/cupertino.dart';

class ConnectionChecker {
  static Future checkConnection() async {
    try {} catch (e) {
      debugPrint("error $e");
    }
    return false;
  }
}
