import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapi/models/slider_model.dart';

class Sliders {
  List<sliderModel> sliders = [];
  Future<void> getSlider() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=3ca8de14c6c04fdc828083ba8c98a56a";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          sliderModel slidermodel = sliderModel(
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
            author: element['author'],
          );
          sliders.add(slidermodel);
        }
      });
    }
  }
}
