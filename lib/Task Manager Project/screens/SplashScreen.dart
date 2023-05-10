import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/BackGroundImage.dart';
import 'LoginScreen.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {// Build method call howar por GoToLoginScreen function call korbe.
      GoToLoginScreen();
    });





  }

  //login page
  GoToLoginScreen(){
    // ata use kore duration a oi timer por login screen a jabe
    Future.delayed(Duration(seconds: 2)).then((value) => {//2 second thakbe ay page a
      //2 second thakar por login page a jabe
      //pushAndRemoveUntil use korle back page a ar asa jaina

      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BackgroundImage(
        child: Center(
          child: SvgPicture.asset("assets/images/logo.svg",fit: BoxFit.scaleDown,),
        ) ,
      )





    );
  }
}
