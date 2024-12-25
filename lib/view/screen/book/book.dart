import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/controller/ui_controller/book/book.dart';
import 'package:learning_management/view/common_widget/common_search_bar.dart';
import 'package:learning_management/view/screen/book/widget/book_card.dart';

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.put(BookController());
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
          Obx(() => bookController.isLoading.isTrue
              ? const CircularProgressIndicator()
              : Expanded(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: bookController.topmentorlist.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 7,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1.2),
                    itemBuilder: (context, index) {
                      return BookCard(
                        image: "${bookController.topmentorlist[index].image}",
                        name: "${bookController.topmentorlist[index].name}",
                        titel: "${bookController.topmentorlist[index].titel}",
                      );
                    },
                  ),
                )),
          SizedBox(height: 10),
          Text("Mentor"),
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){return Column();}
        ],
      ),
    );
  }
}
