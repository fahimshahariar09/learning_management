import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.image,
    required this.name,
    required this.tk,
  });

  final String image;
  final String name;
  final String tk;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.red,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(image),
                const SizedBox(width: 20),
                Text(name),
              ],
            ),
            Container(
                height: 20,
                decoration: BoxDecoration(color: Colors.blue.shade700),
                child: Text(tk)),
          ],
        ),
      ),
    );
  }
}
