import 'package:flutter/material.dart';

import '../screens/ProfileUpdateScreen.dart';
/*
akhane isTappAble variable niyeci karon isTappAble=true hole appbar a click korle update profile a jabe
 kintu update profile giye click korle ar kothaw jabe na
 */




AppBar ReUseAbleAppBar(context,{bool isTappAble = true }) {
  return AppBar(
    backgroundColor: Colors.greenAccent,
    //akhane je login korbe tar image,name ,mail address appbar a show korbe
    title: ListTile(
      onTap: () {
        if(isTappAble==false){
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (builder)=>ProfileUpdateScreen()), );

      },
      leading: CircleAvatar(
        backgroundColor: Colors.greenAccent.shade700,
        child: Icon(Icons.person),
      ),
      title: Text("Rasel Ahmed"),
      subtitle: Text("rasel@gmail.com"),
    ),
    toolbarHeight: 60,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  );
}

