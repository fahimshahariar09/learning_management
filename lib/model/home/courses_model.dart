class CoursesModel {
  String? image;
  String? name;
  String? tk;

  CoursesModel({this.image, this.name,this.tk});

  CoursesModel.formJson(Map<String, dynamic> json) {
    image = json["image"];
    name = json["name"];
    tk = json["tk"];
  }
}
