import 'dart:async';

import 'package:all_flutter_project/Task%20Manager%20Project/screens/MainBottomNavBarScreen.dart';
import 'package:all_flutter_project/Task%20Manager%20Project/utils/UserData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/BackGroundImage.dart';
import 'LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*
    Build method initState call howar pore call hoi sob somoy.

     */
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Build method call howar por GoToLoginScreen function call korbe.
      GoToLoginScreen();
    });
  }

  //login page
  GoToLoginScreen() async {
    //akhane token er vlue nilam result er modde

    final sharepref = await SharedPreferences.getInstance();
    final String? result = sharepref.getString("token");

    //akhane jodi token er vlaue null thake tahole login screen a jabe
    if (result == null) {
      /*User data te token,firstName,lastName,email
       agula value sob userData class Mane UserData file a patai disi
       jeno appBar a ay value gual use korte pari
         */
      UserData.token=result;
      UserData.firstName=sharepref.getString("firstName");
      UserData.lastName=sharepref.getString("lastName");
      UserData.email=sharepref.getString("email");



      // ata use kore duration a oi timer por login screen a jabe
      Future.delayed(Duration(seconds: 1)).then((value) => {
            //2 second thakbe ay page a
            //2 second thakar por login page a jabe
            //pushAndRemoveUntil use korle back page a ar asa jaina

            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (route) => false)
          });
    }
    //akhane jodi token er vlaue null na thake tahole MainBottomNavBarScreen   a jabe
    else {
      Future.delayed(Duration(seconds: 1)).then((value) =>

          //2 second thakbe ay page a
          //2 second thakar por MainBottomNavBarScreen page a jabe
          //pushAndRemoveUntil use korle back page a ar asa jaina
          {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => MainBottomNavBarScreen()),
                (route) => false)
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundImage(
      child: Center(
        child: SvgPicture.asset(
          "assets/images/logo.svg",
          fit: BoxFit.scaleDown,
        ),
      ),
    ));
  }
}
