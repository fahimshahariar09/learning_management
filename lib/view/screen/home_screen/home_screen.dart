import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/common_search_bar.dart';
import 'package:learning_management/view/common_widget/common_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("Rumi Aktar"),
              subtitle: Text("Let’s learn something new"),
              trailing: Icon(Icons.add_alert_sharp),
            ),
            SizedBox(height: 10),
            CommonSearchBar(),
            SizedBox(height: 10),
            CommonText(titel: "Popular Courses"),

          ],
        ),
      ),
    );
  }
}
