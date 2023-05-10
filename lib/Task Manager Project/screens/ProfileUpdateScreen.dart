import 'package:flutter/material.dart';

import '../style/Style.dart';
import '../widgets/BackGroundImage.dart';
import '../widgets/ReUseAbleAppBar.dart';
import '../widgets/ReuseAbleElevatedButton.dart';

class ProfileUpdateScreen extends StatefulWidget {
  const ProfileUpdateScreen({Key? key}) : super(key: key);

  @override
  State<ProfileUpdateScreen> createState() => _ProfileUpdateScreenState();
}

class _ProfileUpdateScreenState extends State<ProfileUpdateScreen> {
  TextEditingController EmailValue = TextEditingController();

  TextEditingController FirstNameValue = TextEditingController();

  TextEditingController LastNameValue = TextEditingController();

  TextEditingController MobileValue = TextEditingController();

  TextEditingController PasswordValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReUseAbleAppBar(context, isTappAble: false),
        body: BackgroundImage(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Update Profile",
                  style: Heading1TextStyle(colorDarkBlue),
                ),
                SizedBox(
                  height: 20,
                ),

                //Image Picker feild
                //(InkWell)use kore onTap function use kora jai
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Photo",
                            style: TextStyle(color: Colors.black),
                          ),
                          padding: EdgeInsets.all(12),
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: EmailValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("Email"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: FirstNameValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("First Name"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: LastNameValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("Last Name"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: MobileValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("Mobile"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: PasswordValue,
                  validator: (String? value) {
                    return null;
                  },
                  decoration: FormFeildStyle("Password"),
                ),
                SizedBox(
                  height: 20,
                ),
                ReUseAbleElevatedButton(text: "Update", onTap: () {})
              ],
            ),
          ),
        ));
  }
}
