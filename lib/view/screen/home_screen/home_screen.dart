import 'package:flutter/material.dart';
import 'package:learning_management/view/common_widget/common_search_bar.dart';
import 'package:learning_management/view/common_widget/common_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: SizedBox(
      //     height: 100,
      //     child: Column(
      //       children: [
      //         ListTile(
      //           leading: CircleAvatar(),
      //           title: Text("Rumi Aktar"),
      //           subtitle: Text("Let’s learn something new"),
      //           trailing: Icon(Icons.add_alert_sharp),
      //         ),
      //         const SizedBox(height: 10),
      //         const CommonSearchBar(),
      //       ],
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(),
                title: Text("Rumi Aktar"),
                subtitle: Text("Let’s learn something new"),
                trailing: Icon(Icons.add_alert_sharp),
              ),
              const SizedBox(height: 10),
              const CommonSearchBar(),
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              CommonText(titel: "Popular Courses",fColor: Colors.red),
              const SizedBox(height: 15),
              Expanded(
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
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
        ),
      ),
    );
  }
}
