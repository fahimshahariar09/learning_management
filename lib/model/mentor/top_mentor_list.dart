class TopMentorListModel{
  String? image;
  String? name;
  String? titel;

  TopMentorListModel({this.image,this.name,this.titel});

  TopMentorListModel.formJson(Map<String,dynamic> json){
    image =json['image'];
    name =json['name'];
    titel =json['titel'];
  }

}