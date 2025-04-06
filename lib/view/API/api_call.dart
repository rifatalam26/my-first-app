import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_app/view/API/joksmodel.dart';

class ApiCall {
  Future<List<JoksModel>> joksData() async {
    List<JoksModel> m = [];
    String url = "https://official-joke-api.appspot.com/random_joke";
    var response = await http.get(Uri.parse(url));
    var decodedata = jsonDecode(response.body);

    if (response.statusCode == 200) {
      m.add(JoksModel(
          type: decodedata["type"],
          setup: decodedata["setup"],
          punchline: decodedata["punchline"],
          id: decodedata["id"]));
    }
    return m;
  }
}
