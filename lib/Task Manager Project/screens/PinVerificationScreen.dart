import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../style/Style.dart';
import '../widgets/BackGroundImage.dart';
import '../widgets/HaveAccount.dart';
import '../widgets/ReuseAbleElevatedButton.dart';
import 'SetPasswordScreen.dart';

class PinVerification extends StatefulWidget {
  const PinVerification({Key? key}) : super(key: key);

  @override
  State<PinVerification> createState() => _PinVerificationState();
}

class _PinVerificationState extends State<PinVerification> {
  TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PIN Verification",
                  style: Heading1TextStyle(colorDarkBlue),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "A 6 digit verfication pin send your email address",
                  style: Heading6Style(colorLightGray),
                ),

                SizedBox(
                  height: 15,
                ),

                //pin verification feild
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      borderWidth: 0,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      inactiveFillColor: Colors.white),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: colorWhite,
                  cursorColor: colorDarkBlue,
                  enableActiveFill: true,
                  controller: pinController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  appContext: context,
                ),

                SizedBox(
                  height: 15,
                ),

                //Button

                ReUseAbleElevatedButton(
                    text: "Verify",

                    onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SetPasswordScreen()));
                }),

                SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //akahene (HaveAccount ? Singin)button ase oita widget vabe use kora hoice

                    HaveAccount(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
