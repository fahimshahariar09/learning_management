class MentorModel{
  String? image;
  String? name;
  String? subtitel;

  MentorModel({this.image,this.name,this.subtitel});

  MentorModel.formJson(Map<String,dynamic> json){
    image=json["image"];
    name=json["name"];
    subtitel=json["subtitel"];
  }

}