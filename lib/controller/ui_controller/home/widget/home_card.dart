import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

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
            Image.asset(""),
            SizedBox(width: 20),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
