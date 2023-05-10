import 'package:flutter/material.dart';

import '../style/Style.dart';
import '../widgets/ReuseAbleElevatedButton.dart';
import 'ForgotPasswordScreen.dart';
import 'MainBottomNavBarScreen.dart';
import 'RegistrationScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController EmailValue = TextEditingController();
  TextEditingController PasswordValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get Start With",
                    style: Heading1TextStyle(colorDarkBlue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Learn With Rasel Ahmed",
                    style: Heading6Style(colorLightGray),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: EmailValue, //value newar jonno use kora hoice
                    validator: (String? value) {
                      //null check korar jonno

                      return null;
                    },

                    decoration: FormFeildStyle("Email Address"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    //password der number dekha jabe na khali dot(...) dekha jabe value dile
                    controller: PasswordValue,
                    //value newar jonno use kora hoice
                    validator: (String? value) {
                      //null check korar jonno
                      return null;
                    },

                    decoration: FormFeildStyle("Password"),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //Button
                  ReUseAbleElevatedButton(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainBottomNavBarScreen()), (route) => false);
                    },
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => ForgotPassworScreen()));
                        },
                        child: Text(
                          "Forget Password",
                          style: Heading6Style(colorGreen),
                        )),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have account ? "),

                      TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (
                                    context) => RegistrationScreen()));
                              },
                              child: Text(
                                "sign up",
                                style: Heading6Style(colorGreen),
                              ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
