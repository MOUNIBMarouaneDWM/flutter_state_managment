import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String,dynamic>> menus=[
    {"title":"Statefull","icon":Icon(Icons.album_sharp,color: Colors.purple),"route":"/counter1"},
    {"title":"Provider","icon":Icon(Icons.album_sharp,color: Colors.purple),"route":"/counter2"},
    {"title":"BLOC-Cubit","icon":Icon(Icons.album_sharp,color: Colors.purple),"route":"/counter3"},
    {"title":"BLOC-BLOC","icon":Icon(Icons.album_sharp,color: Colors.purple),"route":"/counter4"}
  ];
}