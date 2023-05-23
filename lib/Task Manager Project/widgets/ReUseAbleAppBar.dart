import 'package:all_flutter_project/Task%20Manager%20Project/screens/LoginScreen.dart';
import 'package:all_flutter_project/Task%20Manager%20Project/style/Style.dart';
import 'package:all_flutter_project/Task%20Manager%20Project/utils/UserData.dart';
import 'package:flutter/material.dart';

import '../screens/ProfileUpdateScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
akhane isTappAble variable niyeci karon isTappAble=true hole appbar a click korle update profile a jabe
 kintu update profile giye click korle ar kothaw jabe na
 */


AppBar ReUseAbleAppBar(context, {bool isTappAble = true }) {
  return AppBar(
    backgroundColor: Colors.greenAccent,
    //akhane je login korbe tar image,name ,mail address appbar a show korbe
    title: ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () {
        if (isTappAble == false) {
          return;
        }
        Navigator.push(context,
          MaterialPageRoute(builder: (builder) => ProfileUpdateScreen()),);
      },
      leading: CircleAvatar(
        backgroundColor: Colors.greenAccent.shade700,
        child: Icon(Icons.person),
      ),
      title: Text("${UserData.firstName ?? ""} ${UserData.lastName}"),
      subtitle: Text("${UserData.email}"),
    ),

    toolbarHeight: 60,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

    actions: [
      /*
      logout button a click korle share preference clear hoye login screen a chole jabe
       */
      IconButton(onPressed: () async {

        /*
        akhane SharePreference use kore share preference er vitor sob data remove kore diyeci
        jeno pore app ta open korle token null thake and login page jai
         */
        final sharepref = await SharedPreferences.getInstance();
        sharepref.clear();
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (context) => LoginScreen()), (
            route) => false);
      }, icon: Icon(Icons.logout),color: colorDarkBlue,),
    ],


  );
}

