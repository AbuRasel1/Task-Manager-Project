import 'package:flutter/material.dart';

import '../style/Style.dart';
import '../widgets/BackGroundImage.dart';
import '../widgets/HaveAccount.dart';
import '../widgets/ReuseAbleElevatedButton.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController EmailValue = TextEditingController();

  TextEditingController FirstNameValue = TextEditingController();
  TextEditingController LastNameValue = TextEditingController();
  TextEditingController MobileValue = TextEditingController();
  TextEditingController PasswordValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BackgroundImage(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "JOIN With Us",
                  style: Heading1TextStyle(colorDarkBlue),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: EmailValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("  Email"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: FirstNameValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("  First Name"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: LastNameValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("  Last Name"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: MobileValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("  Mobile"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true, //password (..)amon vabe thakbe
                  controller: PasswordValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("  Password"),
                ),
                SizedBox(
                  height: 25,
                ),
                ReUseAbleElevatedButton(onTap: () {}),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [HaveAccount()],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
