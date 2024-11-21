import 'dart:developer';
import 'package:learning_management/database/home/category.dart';
import 'package:learning_management/model/home/category_model.dart';

class CategoryService {
  static Future<List<CategoryModel>> categoryService() async {
    try {

      List<CategoryModel> data =[];
      for(var i in CategoryList.categorylist[""].toList()){

      }

    } catch (e) {
      log("error $e");
    }
    return [];
  }
}
