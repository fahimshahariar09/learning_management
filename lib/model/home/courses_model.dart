class CoursesModel {
  String? image;
  String? name;

  CoursesModel({this.image, this.name});

  CoursesModel.formJson(Map<String, dynamic> json) {
    image = json["image"];
    name = json["name"];
  }
}
