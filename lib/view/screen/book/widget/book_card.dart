import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard(
      {super.key,
      required this.image,
      required this.name,
      required this.titel});

  final String image;
  final String name;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(image),
                ),
                const SizedBox(height: 5),
                Text(name),
                const SizedBox(height: 3),
                Text(titel),
                const SizedBox(height: 5),
                const Icon(
                  Icons.star,
                  size: 10,
                ),
              ],
            ),
          )),
    );
  }
}
