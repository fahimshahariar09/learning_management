class TopMentorModel{
  String? image;
  String? name;
  String? titel;

  TopMentorModel({this.image,this.name,this.titel});

  TopMentorModel.formJson(Map<String,dynamic> json){
    image =json['image'];
    name =json['name'];
    titel =json['titel'];
  }

}