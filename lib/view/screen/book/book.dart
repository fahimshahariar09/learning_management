import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/common_search_bar.dart';

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(),
            title: Text("Rumi"),
            subtitle: Text("Let's learn"),
          ),
          const SizedBox(height: 10),
          const CommonSearchBar(),
          const SizedBox(height: 10),
          const Text("Top Mentor"),
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    Text("data"),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
