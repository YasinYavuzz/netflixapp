

import 'package:flutter/material.dart';

class searchProvider with ChangeNotifier{


  int? index;

  String get image => getImage(index!);
  String get name => getName(index!);

  List items = [
    {
      "image" : "assets/search/citation.png",
      "name" : "Citation"
    },
    {
      "image" : "assets/search/oloture.png",
      "name" : "Oloture"
    },
    {
      "image" : "assets/search/setup.png",
      "name" : "The Setup"
    },
    {
      "image" : "assets/search/breakingbad.png",
      "name" : "Breaking Bad"
    },
    {
      "image" : "assets/search/ozark.png",
      "name" : "Ozark"
    },
    {
      "image" : "assets/search/governor.png",
      "name" : "The Governor"
    },
    {
      "image" : "assets/search/excellency.png",
      "name" : "Your Excellency"
    },
  ];

  String getImage(int index){
    return items[index]['image'].toString();
  }

  String getName(int index){
    return items[index]['name'].toString();
  }

}