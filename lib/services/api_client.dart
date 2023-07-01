import 'dart:convert';

import 'package:http/http.dart' as http;

var kIndexUrl = "https://backend.forsaegypt.com/api/v1/stores/index/";

class ApiClient {
  static Future<List> getProducts() async {
    final response = await http.get(Uri.parse(kIndexUrl));
    if (response.statusCode == 200) {
      return (json.decode(response.body)["results"] ?? [])[0]["offers"];
    } else {
      throw Exception('Failed to load data from API');
    }
  }
}
