import 'package:flutter/material.dart';
import 'package:learning_management/view/screen/profile/widget/change_password_section.dart';
import 'package:learning_management/view/screen/profile/widget/setting_list_tile.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildSizedBox(height: 10),
              //change password
              SettingListTile(onTap: (){
                showBottomSheet(context: context, builder: (builder){
                  return const ChangePasswordSection();
                });
              }, titel: "change_password"),
              //change language
              Card(
                elevation: 4,
                surfaceTintColor: Colors.transparent,
                shape: OutlineInputBorder(borderSide: BorderSide.none),
                child: Row(
                  children: [

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox({double? height, double? width}) => SizedBox(
        height: height,
        width: width,
      );
}
