import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
              ),
              SizedBox(height: 10),
              Text("data"),
              SizedBox(height: 10),
              Text("data"),
              SizedBox(height: 10),
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
