import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/home/home.dart';
import 'package:learning_management/view/common_widget/common_search_bar.dart';
import 'package:learning_management/view/common_widget/common_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
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
              const SizedBox(height: 15),
              Expanded(
                child: GridView.builder(
                  itemCount: homeController.categoryList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                            "${homeController.categoryList[index].images}"),
                        const SizedBox(height: 5),
                        Text("${homeController.categoryList[index].name}"),
                      ],
                    );
                  },
                ),
              ),
              const Row(
                children: [
                  CommonText(titel: "Popular Courses"),
                ],
              ),
              const SizedBox(height: 20),
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
        ),
      ),
    );
  }
}
