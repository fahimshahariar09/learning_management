class CategoryModel {
  List<CategoryList>? categorylist;

  CategoryModel({this.categorylist});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['category'] != null) {
      categorylist = <CategoryList>[];
      json['category'].forEach((v) {
        categorylist!.add(CategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (categorylist != null) {
      data['category'] = categorylist!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryList {
  String? images;
  String? name;

  CategoryList({this.images, this.name});

  CategoryList.fromJson(Map<String, dynamic> json) {
    images = json['images'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['images'] = images;
    data['name'] = name;
    return data;
  }
}
