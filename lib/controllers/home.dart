import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_ap/pages/heading_file.dart';
//import 'package:lipsum/lipsum.dart' as lipsum;
class HomeNewsController extends GetxController {
 // Dio dio = Dio();
// List<ListItem> listTile = [
//     ListItem(
// 'https://thumbs.dreamstime.com/b/news-newspapers-folded-stacked-word-wooden-block-puzzle-dice-concept-newspaper-media-press-release-42301371.jpg',
// lipsum.createWord(numWords: 6),   
// lipsum.createWord(numWords: 2) ,
// //28 jan 2020' ,
//     ),
//     ListItem(
// 'https://thumbs.dreamstime.com/b/news-newspapers-folded-stacked-word-wooden-block-puzzle-dice-concept-newspaper-media-press-release-42301371.jpg',
// lipsum.createWord(numWords: 6),   
// lipsum.createWord(numWords: 2) ,
// //28 jan 2020' ,
//     ),
//     ListItem(
// 'https://thumbs.dreamstime.com/b/news-newspapers-folded-stacked-word-wooden-block-puzzle-dice-concept-newspaper-media-press-release-42301371.jpg',
// lipsum.createWord(numWords: 6),   
// lipsum.createWord(numWords: 2) ,
// //28 jan 2020' ,
//     ),
//   ];
   Dio dio = Dio();
  bool isLoading = false;
  final String _apiKey = 'b15a9f44d4d041cab76f2d7317c13d01';
  String selectedCountry = "India";
  String tempCountry = "India";
  String selectedCountryCode = "in";
  int? selectedValue = 2;
  List<Map<String, String>> countriesList = [
    {"Nepal": "np"},
    {"USA": "us"},
    {"India": "in"},
    {"Sri Lanka": "sl"},
    {"England": "eng"},
    {"Sweden": "sn"},
    {"Pacific Island": "pc"},
  ];

  // get newsList => null;
  List newsList = [];

  get hasMore => null;

  get changeSortCategory => null;

  get sortBy => null;

  get scrollController => null;

  void getCountryNews() {}

  void launchURL({required String url}) {}
  
}
