import 'package:all_flutter_project/Task%20Manager%20Project/screens/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//context ke global kora hoice
  static GlobalKey <NavigatorState> navigatorKey=GlobalKey<NavigatorState>();

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ay context te global korar por sob file theke use kora jabe
      navigatorKey: MyApp.navigatorKey,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
