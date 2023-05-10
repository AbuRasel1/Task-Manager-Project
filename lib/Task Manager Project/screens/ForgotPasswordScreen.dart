import 'package:flutter/material.dart';

import '../style/Style.dart';
import '../widgets/BackGroundImage.dart';
import '../widgets/HaveAccount.dart';
import '../widgets/ReuseAbleElevatedButton.dart';
import 'PinVerificationScreen.dart';

class ForgotPassworScreen extends StatefulWidget {
  const ForgotPassworScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassworScreen> createState() => _ForgotPassworScreenState();
}

class _ForgotPassworScreenState extends State<ForgotPassworScreen> {
  final TextEditingController EmailValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
          child: SafeArea(
        //safe area use korle lekha gula appbar ba er opore jabe na body te thakbe
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your Email Address",
                  style: Heading1TextStyle(colorDarkBlue),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "A 6 digit verification email send your email address",
                  style: Heading6Style(colorLightGray),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: EmailValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle(
                    "Email",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ReUseAbleElevatedButton(onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PinVerification()));
                }),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HaveAccount()
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
