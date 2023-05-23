
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui';

import 'package:fluttertoast/fluttertoast.dart';



//all color
const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorDark = Color.fromRGBO(136, 28, 32, 1);
const colorGreen=Color.fromRGBO(33, 191, 115, 1);
const colorBlue=Color.fromRGBO(52, 152, 219,1.0);
const colorOrange=Color.fromRGBO(230, 126, 34,1.0);
const colorWhite=Color.fromRGBO(255, 255, 255,1.0);
const colorDarkBlue=Color.fromRGBO(44, 62, 80,1.0);
const colorLightGray=Color.fromRGBO(135, 142, 150, 1.0);
const colorLight=Color.fromRGBO(211, 211, 211, 1.0);



//background image
/*SvgPicture BackgroundImage(context){
  return SvgPicture.asset("assets/images/background.svg",
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    fit: BoxFit.cover,//full screen cover kore rakhbe

  );
}*/

//heading text style
TextStyle Heading6Style(TextColor){
  return TextStyle(
    fontWeight: FontWeight.w800,
    color: TextColor,
    fontFamily: 'poppins',
    fontSize: 16,

  );
}


TextStyle Heading1TextStyle(TextColor){
  return TextStyle(
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: TextColor,
  );
}


//Form Feild er style
InputDecoration FormFeildStyle(label){
  return InputDecoration(

    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen),
      borderRadius: BorderRadius.circular(5),
  ),
    fillColor: colorWhite,
    filled: true,

    enabledBorder: OutlineInputBorder(

      borderSide: BorderSide(color: colorWhite),
      borderRadius: BorderRadius.circular(5),
    ),
    contentPadding: EdgeInsets.fromLTRB(20,15, 20, 15),
    labelText: label,
    
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide.none,

    ),


  );
}


//button style
//Button style
ButtonStyle AppButtonStyle(){

  return ElevatedButton.styleFrom(
        elevation: 1,
      backgroundColor: colorGreen,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))

  );
}
//Button Text Style
TextStyle AllButtonTextStyle(){
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: 'poppins',


  );
}

// Ink SuccessButtonStyle(ButtonText){
//   return Ink(
//     decoration: BoxDecoration(color: colorGreen,borderRadius: BorderRadius.circular(6)),
//     child: Container(
//       height: 45,
//       alignment: Alignment.center,
//       child: Text(ButtonText,style: AllButtonTextStyle(),),
//     ),
//   );
// }

//toast message
void ToastMessage(msg){
   Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

}