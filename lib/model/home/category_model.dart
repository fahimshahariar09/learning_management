class CategoryList {
  String? images;
  String? name;

  CategoryList({this.images, this.name});

  CategoryList.fromJson(Map<String, dynamic> json) {
    images = json['images'];
    name = json['name'];
  }
}
