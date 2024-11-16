import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/setting/setting.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController settingController = Get.put(SettingController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  const Text("Dark & Mode"),
                  Switch(
                      value: settingController.isLightTheme.value,
                      onChanged: (value) {
                        settingController.changeThemeFun();
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
