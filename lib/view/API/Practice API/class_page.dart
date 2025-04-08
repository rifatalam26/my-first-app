import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future data() async {
    String url = "https://official-joke-api.appspot.com/random_joke";
    var response = await http.get(Uri.parse(url));
    var decodedata = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print("${decodedata["type"]}");
      print("${decodedata["setup"]}");
      print("${decodedata["punchline"]}");
    }
  }
}
