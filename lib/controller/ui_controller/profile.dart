import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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
}