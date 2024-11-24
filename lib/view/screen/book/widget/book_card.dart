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
          child: Column(
            children: [
              Image.asset(image),
              Text(name),
              Text(titel),
              Icon(
                Icons.star,
                size: 5,
              ),
            ],
          )),
    );
  }
}
