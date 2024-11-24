import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/common_search_bar.dart';

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("Rumi"),
            subtitle: Text("Let's learn"),
          ),
          SizedBox(height: 10),
          CommonSearchBar(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
