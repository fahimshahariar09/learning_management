import 'dart:io';

import 'package:flutter/material.dart';

class ProfileUpdateService {
  static Future<bool> profileupdateService(
      {required String name,
      required String address,
      required File image}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      var data = {
        "id": 4,
        "name": "fahim",
        "username": "null",
        "email": "fahim@gmail.com",
        "address": "google",
        "profile_image": "url",
        "data": "14 may 2024"
      };
    } catch (e) {
      debugPrint("error$e");
    }
    return false;
  }
}
