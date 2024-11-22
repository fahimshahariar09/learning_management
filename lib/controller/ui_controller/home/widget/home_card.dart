import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, this.image, this.name});

  final String? image;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.red,
        ),
        child: Row(
          children: [
            Image.asset("$image"),
            const SizedBox(width: 20),
            const Text("data"),
          ],
        ),
      ),
    );
  }
}
