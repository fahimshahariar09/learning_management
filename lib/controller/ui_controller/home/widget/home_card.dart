import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        width: 150,
        decoration: const BoxDecoration(color: Colors.red),
        child: const Column(
          children: [],
        ),
      ),
    );
  }
}
