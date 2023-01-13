import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../apiservices/api.dart';
import '../model/news.dart';
//import 'package:lipsum/lipsum.dart' as lipsum;

@override
class HeadingText extends StatefulWidget {
  const HeadingText({Key? key}) : super(key: key);

  @override
  State<HeadingText> createState() => _HeadingTextState();
}

class _HeadingTextState extends State<HeadingText> {
  _NewsListState() {
    _selectedVal = _NewsList[0];
  }


  final _NewsList = ["Popular", "oldest", "Newest"];
  String? _selectedVal = " ";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Top HeadLines",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: const [
                Text('Sort:'), // SortDropdown(),
              ],
            ),
          ),
          DropdownButton(
              icon: Icon(Icons.arrow_drop_down),
              value: null,
              isDense: true,
              items: _NewsList.map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  )).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedVal = value as String;
                });
              })
        ],
      ),
    );
  }
}

class ListItem {
  ListItem(String imgurl, String newsTile, String author);
  
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article?>?>(
        future: NewsApi().fetchNewsArticle(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Article?>? newsArticle = snapshot.data;
            return ListView.builder(
                itemCount: newsArticle!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  // customListTile(newsArticle[index]!);
                  // return const Center();
                  return ListTile(
                    title: Text(newsArticle[index]!.title!),
                  );
                });
          }
        });
  }

  // void customListTile(Article article) {}

}

// class ApiImages extends StatefulWidget {
//   // const ApiImages({super.key});
//   @override
//   _ApiImagesState createstate() => _ApiImagesState();
  
//   @override
//   State<ApiImages> createState() => _ApiImagesState();
// }

// class _ApiImagesState extends State<ApiImages>
//  with SingleTickerProviderStateMixin{
//   List<ListItem> listTile = [
//     ListItem(
// 'https://thumbs.dreamstime.com/b/news-newspapers-folded-stacked-word-wooden-block-puzzle-dice-concept-newspaper-media-press-release-42301371.jpg'
// lipsum.createWord(numWords: 6),   
// lipsum.createWord(numWords: 2) ,

//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class ListItem {
// }
