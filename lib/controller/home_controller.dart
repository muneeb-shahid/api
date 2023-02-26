import 'dart:convert';

import 'package:http/http.dart' as http;

import '../services/home_services.dart';

getUser() async {
var url = "https://maaz-api.tga-edu.com/api/users";

  var Baseurl = Uri.parse(url);
  var response = await http.get(Baseurl);
  print(response.body);
  var responsedata = jsonDecode(response.body);
  var userdata = UserModel.fromJson(responsedata);

  return userdata;
}