import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text("data"),
            subtitle: Text("data"),
          )
        ],
      ),
    );
  }
}
