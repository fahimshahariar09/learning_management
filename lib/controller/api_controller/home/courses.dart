import 'dart:convert';
import 'dart:developer';

import 'package:learning_management/database/home/courses.dart';
import 'package:learning_management/model/home/courses_model.dart';

class CoursesService{
  static Future<List<CoursesModel>> coursesService()async{
    try{

      List<CoursesModel> data =[];
      for(var i in CoursesList.courseslist["courses"].toList()){
        var decodeData =CoursesModel.formJson(jsonDecode(jsonEncode(i)));
        data.add(decodeData);
      }
      return data;
    }catch(e){log("error $e");}
  return [];
  }
}