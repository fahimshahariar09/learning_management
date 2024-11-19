
class CategoryModel {
  List<CategoryList>? categorylist;

  CategoryModel({this.categorylist});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['addtocartShow'] != null) {
      categorylist = <CategoryList>[];
      json['addtocartShow'].forEach((v) {
        categorylist!.add(CategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (categorylist != null) {
      data['addtocartShow'] = categorylist!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryList {
  String? image;
  String? name;
  String? price;

  CategoryList({this.image, this.name, this.price});

  CategoryList.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}