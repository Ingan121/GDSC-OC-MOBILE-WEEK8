import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://dog.ceo/api";

  Future<List<dynamic>> multipleRandomImages() async {
    final Uri url = Uri.parse("$baseUrl/breeds/image/random/50");

    final response = await http.get(url);

    try {
      print(jsonDecode(response.body)["message"]);
      return jsonDecode(response.body)["message"];
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<dynamic>> multipleCorgiImages() async {
    final Uri url = Uri.parse("$baseUrl/breed/corgi/cardigan/images/random/50");

    final response = await http.get(url);

    try {
      print(jsonDecode(response.body)["message"]);
      return jsonDecode(response.body)["message"];
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
