import 'dart:io';

import 'package:flutter/material.dart';

import '../style/Style.dart';
import '../widgets/BackGroundImage.dart';
import '../widgets/ReUseAbleAppBar.dart';
import '../widgets/ReuseAbleElevatedButton.dart';
import 'package:image_picker/image_picker.dart';

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

  //image pic korar jonno PhotoFile name variable niyeci ata prothome null thakbe

  XFile? photoFile;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: ReUseAbleAppBar(context, isTappAble: false),
        body: BackgroundImage(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                    onTap: () async {
                      final imagePicker = ImagePicker();
                      //ata async operation mane future a result dibe tai await use koreci
                      final result = await imagePicker.pickImage(
                          source: ImageSource.gallery);

                      if (result !=null) {

                        photoFile = result;
                        setState(() {

                        });
                      }
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
                          ),
                          /* je image nibo oi image ta box a show korbe
                          ata mobile kaj kore kintu web a error dei
                          tai comment kore rakhci
                          */

                         // Image.file(File(photoFile?.path ?? ''),width: 30,height: 30,),



                          /*
                          PhotoFile null thakle empty string dekhabe
                           */
                          Expanded(child: Text(photoFile?.name ?? "",maxLines: 3,)),
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
          ),
        ));
  }
}
