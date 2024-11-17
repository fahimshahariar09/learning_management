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
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Dark & Mode",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Switch(
                      value: settingController.isLightTheme.value,
                      onChanged: (value) {
                        settingController.changeThemeFun();
                      })
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Language",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Obx(() => DropdownButton(
                        hint: const Text(
                            'Please choose a location'), // Not necessary for Option 1
                        value: settingController.selectedLanguage.value,
                        onChanged: (newValue) {
                          settingController.selectedLanguage.value = newValue!;
                          settingController.changeLanguageFun();
                        },
                        items: settingController.languageList.map((location) {
                          return DropdownMenuItem(
                            value: location,
                            child: Text(location),
                          );
                        }).toList(),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
