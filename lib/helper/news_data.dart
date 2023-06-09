import 'dart:convert';

import '../model/article_model.dart';
import 'package:http/http.dart' as http;

class News{
  List<ArticleModel> news=[];

  //Uri get uri => null;
Future<void> getNews() async {
  String url = "https://newsapi.org/v2/everything?q=tesla&from=2023-05-08&sortBy=publishedAt&apiKey=e298abae11994dd1adafc915b850dc32";
  Uri uri = Uri.parse(url);
  var response = await http.get(uri);

  var jsonData = jsonDecode(response.body);
  if(jsonData['status']== 'ok'){
    jsonData['articles'].forEach((element){
      if (element['urlToImage'] != null && element['description'] !=null){
        ArticleModel articleModel=ArticleModel(
            author: element['author'],
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            publishedAt: element['publishedAt'],
            content: element['content']
        );
        news.add(articleModel);
      }
    });
  }
}
}