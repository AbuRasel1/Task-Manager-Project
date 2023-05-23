import 'dart:convert';

import 'package:all_flutter_project/Task%20Manager%20Project/screens/LoginScreen.dart';
import 'package:all_flutter_project/Task%20Manager%20Project/utils/UserData.dart';
import 'package:all_flutter_project/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';
//ay get method request ta bar bar reuse kora hobe tai create koreci
class GetMethodRequester {
  //get method
  Future GetRequest(String url) async {
    //try ar catch use koreci jodi api a kono error dekhai tahole handle korar jonno
    //jodi soti vabe kaj kore tahole try er vitor er code kaj korbe na hole catch er vitor kaj korbe
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
    } catch (e) {
      print(e);
    }
  }

//post method
  Future PostRequest(String url, Map<String, String> body) async {
    try {
      http.Response response = await http.post(Uri.parse(url),
          headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
            'token':UserData.token ?? "",

          },
          //jsonEncode mane map theke json a convert kora hoice
          body: jsonEncode(body));

      //logger().i use koreci jno akhane success howar por status conde ar body value dekhabe i mane sucess color diye
      Logger().i(response.statusCode);
      Logger().i(jsonDecode(response.body));

      if (response.statusCode == 200) {
        /*
        jsonDecode mane json theke map a convert kora hoice and
        seta return kora hoice je function call korece okhane
        */
        return jsonDecode(response.body);
      }
      else if (response.statusCode == 401) {
        final sharepref = await SharedPreferences.getInstance();
        sharepref.clear();

        Navigator.pushAndRemoveUntil(
            MyApp.navigatorKey.currentState!.context
            , MaterialPageRoute(builder: (context) => LoginScreen()), (
            route) => false);
      }

      else {
        //logger().e use koreci jno akhane error  request faild dekhabe e mane error color diye android studio er run a dekhabe

        Logger().e("Request Faild");
      }
    } catch (e) {
      Logger().e(e);
    }
  }
}
