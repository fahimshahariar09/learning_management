import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';

class ChangePasswordSection extends StatelessWidget {
  const ChangePasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: SingleChildScrollView(
        child: Form(
          key: profileController.formKey,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
