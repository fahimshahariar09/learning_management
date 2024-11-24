import 'package:flutter/material.dart';

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
          )
        ],
      ),
    );
  }
}
