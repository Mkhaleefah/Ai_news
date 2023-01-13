import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shopping_ap/pages/app_bar.dart';
import 'package:shopping_ap/pages/floating.dart';
import 'package:shopping_ap/pages/heading_file.dart';
import 'package:shopping_ap/pages/news_ap.dart';
import 'package:shopping_ap/pages/search.dart';

import 'apiservices/api.dart';
import 'controllers/home.dart';
import 'model/app_color.dart';
import 'model/news.dart';

//import 'package:lipsum/lipsum.dart'as lipsum;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({super.key});
  final homeNewsController = Get.put(HomeNewsController());
  @override
  State<Homepage> createState() => _HomepageState();
}

// List<ListItem> listTile = [
//     ListItem(
// 'https://thumbs.dreamstime.com/b/news-newspapers-folded-stacked-word-wooden-block-puzzle-dice-concept-newspaper-media-press-release-42301371.jpg'
// lipsum.createWord(numWords: 6),
// lipsum.createWord(numWords: 2) ,
// '28 jan 2020',
//     ),
//   ];
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "MyNEWS",
            style: TextStyle(
                color: Color.fromARGB(255, 247, 242, 242), fontSize: 20),
          ),
        ),
        backgroundColor: AppColors.primaryBlue,
        actions: const <Widget>[
          NewsAppBar(),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(height: 10),
            SearchBar(),
            const HeadingText(),
            NewsList(),
            MyWidget(),
          ])),
      floatingActionButton: Filter(),
      ////const SizedBox(height: 20),
      //   FutureBuilder<List<Article?>?>(
      //       future:NewsApi.fetchNewArticle(),
      //       builder: (context, snapshot) {
      //         if (!snapshot.hasData) {
      //           return const Center(
      //             child: CircularProgressIndicator(),
      //           );
      //         } else {
      //           List<Article?>? newsArticle = snapshot.data;
      //           return ListView.builder(
      //               itemCount: newsArticle!.length,
      //               shrinkWrap: true,
      //               itemBuilder: (context, index) {
      //                 customListTile(newsArticle[index]!);
      //                 return const Center();
      //               });
      //         }
      //       })
      // ])),
    );
  }

  void customListTile(Article newsArticle) {}

  get NewsApiServices {}
}
