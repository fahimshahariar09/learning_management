import 'dart:io';

import 'package:flutter/material.dart';

class ProfileUpdateService {
  static Future<bool> profileupdateService(
      {required String name,
      required String address,
      required File image}) async {
    try {} catch (e) {
      debugPrint("error$e");
    }
    return false;
  }
}
