import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("data"),
            subtitle: Text("data"),
            trailing: Icon(Icons.add_alert_sharp),
          ),
          SizedBox(height: 10),
          TextField(),
        ],
      ),
    );
  }
}
