import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapi/models/show_category.dart';

class ShowCategoryNews {
  List<ShowCategoryModel> categories = [];
  Future<void> getCategoriesNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=3ca8de14c6c04fdc828083ba8c98a56a";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ShowCategoryModel categoryModel = ShowCategoryModel(
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
            author: element['author'],
          );
          categories.add(categoryModel);
        }
      });
    }
  }
}
