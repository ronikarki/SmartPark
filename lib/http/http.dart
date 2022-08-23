import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutterapplication/response/responseuser.dart';
import 'package:flutterapplication/models/usermodel.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpConnectUser {
  // SearchGetResponse searchResponseCatcher = SearchGetResponse();
// +++++++++++++++++++++++++++++++++     Register  User  Function     ++++++++++++++++++++++++++++
  String baseurl = 'http://10.0.2.2:90/';
  static String token = '';
  // const currentUser = ;
  //sending data to the server--- creating user
  Future<bool> registerPost(User user) async {
    Map<String, dynamic> userMap = {
      "username": user.username,
      "password": user.password,
      "phone": user.phone,
      // "username": user.username,
      "address": user.address,
    };
    final response =
        await post(Uri.parse(baseurl + 'library/register'), body: userMap);
    if (response.statusCode == 200) {
      var usrRes = ResponseUser.fromJson(jsonDecode(response.body));
      return usrRes.success!;
    } else {
      return false;
    }
  }

// +++++++++++++++++++++++++++++++++   Login     Function     +++++++++++++++++++++++++++++++++++
  Future<bool> loginPosts(String username, String password) async {
    print("Data Reached Here");
    print(AutofillHints.username + password);
    Map<String, dynamic> loginUser = {
      'username': username,
      'password': password
    };
    try {
      print("login server");
      final response = await post(
          Uri.parse(
            baseurl + "library/login",
          ),
          body: loginUser);
      print(response.body);
      //json serializing inline
      final jsonData = jsonDecode(response.body) as Map;
      token = jsonData['token'];
//merotoken = jsonData['token'];
      if (jsonData['success']) {
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
