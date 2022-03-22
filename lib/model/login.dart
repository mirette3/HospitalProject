import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/dio_helper.dart';

class Login extends ChangeNotifier {
  String? email;
  String? password;
  bool isShow = false;

  void signIn({required temail, required tpassword}) {
    email = temail;
    password = tpassword;

    DioHelper.postData(url: "/login", data: {
      "email": "$temail",
      "password": "$tpassword",
      "device_token": "sdfsfsdfsdfsdfsfs",
    }).then((value) async {
      print(value.data["data"]["access_token"]);
      String token = value.data["data"]["access_token"];
      print(token);
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      _prefs.setString("access_token", token);
      if(value.data["data"]["type"] == "docotr" ){

      }
    });

    notifyListeners();
  }

  void openEye() {
    isShow = !isShow;
    notifyListeners();
  }
}
