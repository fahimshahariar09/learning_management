class BookListModel{
  String? image;
  String? name;
  String? titel;

  BookListModel({this.image,this.name,this.titel});

  BookListModel.formJson(Map<String,dynamic> json){
    image =json['image'];
    name =json['name'];
    titel =json['titel'];
  }

}