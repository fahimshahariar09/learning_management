import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/profile.dart';

class DeletedAccountSection extends StatelessWidget {
  const DeletedAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController =Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 10),
      child: SingleChildScrollView(
        child: Form(
          key: profileController.formKey,
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
