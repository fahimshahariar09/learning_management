import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:learning_management/controller/local_storage/local_storage.dart';

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
      await LocalData().writeData(key: "userInfo", value: jsonEncode(data));
      await EasyLoading.showSuccess("success");
      return true;
    } catch (e) {
      debugPrint("error$e");
    }
    await EasyLoading.showError("something went wrong");
    return false;
  }
}
