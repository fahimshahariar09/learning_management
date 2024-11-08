

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class   SignInController extends GetxController{
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController =TextEditingController();
  TextEditingController passController =TextEditingController();
  RxBool isLoading = true.obs;
}