import 'package:dio/dio.dart';

import '../model/news.dart';

class NewsApi {
  String _apikey = 'b15a9f44d4d041cab76f2d7317c13d01';

  String _url =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=b15a9f44d4d041cab76f2d7317c13d01";
  late Dio _dio;
  NewsApi() {
    _dio = Dio();
  }
  Future<List<Article?>?> fetchNewsArticle() async {
    try {
      Response response = await _dio.get(_url);
      print(response);
      News news = News.fromJson(response.data);
      return news.articles;
    } on DioError catch (e) {
      print(e);
      return null!;
    }
  }


}
