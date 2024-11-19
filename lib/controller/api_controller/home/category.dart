import 'dart:convert';
import 'dart:developer';

import 'package:learning_management/model/home/category_model.dart';

class CategoryService {
  static Future<CategoryModel?> categoryService() async {
    try {
      CategoryModel model =CategoryModel.fromJson(jsonDecode(jsonEncode(CategoryList.)));
      return model;
    } catch (e) {
      log("error $e");
    }
    return null;
  }
}
