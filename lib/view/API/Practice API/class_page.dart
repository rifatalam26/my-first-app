import 'dart:convert';

import 'package:http/http.dart' as http;

class api {
  Future Data() async {
    String url = "https://ipinfo.io/161.185.160.93/geo";
    var responce = await http.get(Uri.parse(url));
    var decodedata = jsonDecode(responce.body);

    if (responce.statusCode == 200) {
      print("${decodedata["city"]}");
      print("${decodedata["ip"]}");
      print("${decodedata["region"]}");
    }
  }
}
