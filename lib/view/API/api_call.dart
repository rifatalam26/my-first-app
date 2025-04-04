import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiCall {
  void countryData() async {

    String url = "https://api.nationalize.io/?name=alam";
    var response = await http.get(Uri.parse(url));
    // print("Responce : ${response.statusCode}");
    var decodedata = jsonDecode(response.body);
    var data = decodedata["country"];
    if (response.statusCode == 200) {
      for (int i = 0; i < data.length; i++) {
        print("Data : ${data[i]["probability"]}");
      }
    }
  }
}
