
import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiCall{

void countryData()async{
String url ="https://api.nationalize.io/?name=alam";
  var response = await http.get(Uri.parse(url));
  // print("Responce : ${response.statusCode}");
  var data = jsonDecode(response.body);
  print("------------Data: ${data["name"]}");
}

}