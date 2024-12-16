import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController{
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController oldController = TextEditingController();
  TextEditingController newController = TextEditingController();
  TextEditingController confController = TextEditingController();
  RxInt selectedTab =0.obs;
  RxInt selectedOrderTab =1.obs;
  RxBool languageBN = true.obs;
  RxBool themeLight = true.obs;
  RxBool isLoading = false.obs;
  RxMap<dynamic,dynamic> userInfo = {}.obs;
  ImageSource imageSource =ImageSource.camera;
  late Rx<File?>  profileIMG = Rx<File?>(null);
  final picker =ImagePicker();
}