class CategoryModel {
  String? images;
  String? name;

  CategoryModel({this.images, this.name});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    images = json['images'];
    name = json['name'];
  }
}
