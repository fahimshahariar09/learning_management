import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:learning_management/database/mentor/top_mentor_list.dart';
import 'package:learning_management/model/mentor/top_mentor.dart';

class TopMentorService {
  static Future<List<TopMentorModel>> tomentorService() async {
    try {

      List<TopMentorModel> data =[];

      for(var i in TopMentorList.topmentorList['topmentor'].toList()){
        var decodeData = TopMentorModel.formJson(jsonDecode(jsonEncode(i)));
        data.add(decodeData);
      }
      return data;
    } catch (e) {
      debugPrint("error $e");
    }
    return [];
  }
}
