
import 'dart:convert';

import 'package:http/http.dart'  as http;

import 'package:flutter/material.dart';
import 'package:swen_paper/model/categorymodel.dart';

class homeScreenProvider with ChangeNotifier{
Publicapiresponse? responcedata;
  fetchdata()async{
     final url=Uri.parse("https://newsapi.org/v2/top-headlines?country=in&apiKey=758c23a27e034f75adf89b9963b7c4eb");
var responce=await http.get(url);
 var decodedata = (jsonDecode(responce.body));

  responcedata = Publicapiresponse.fromJson(decodedata);
  print(responce.statusCode);
   print(responce.body);

   notifyListeners();
}
  }
 