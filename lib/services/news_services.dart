import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewServices {
  final Dio dio;

  NewServices({required this.dio});

  Future<List<AritcleModel>> getTopHeadLines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=bc59fee3ab06497199c95f2f0f1a433f&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<AritcleModel> articleList = [];

      for (var article in articles) {
        AritcleModel aritcleModel = AritcleModel.fromJson(article);
        articleList.add(aritcleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
