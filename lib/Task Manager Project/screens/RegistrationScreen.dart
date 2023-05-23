import 'package:all_flutter_project/Task%20Manager%20Project/RestApi/RestApi.dart';
import 'package:flutter/material.dart';

import '../style/Style.dart';
import '../widgets/BackGroundImage.dart';
import '../widgets/HaveAccount.dart';
import '../widgets/ReuseAbleElevatedButton.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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

  //form validation er jonno global key lage
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BackgroundImage(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.all(30),
                child: Form(
                  key: _form,
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
                          if (value?.isEmpty ?? true) {
                            return "Enter Your Email Address";
                          }
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
                          if (value?.isEmpty ?? true) {
                            return "Enter Your First Name ";
                          }
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
                          if (value?.isEmpty ?? true) {
                            return "Enter Your Last Name";
                          }
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
                          if (value?.isEmpty ?? true) {
                            return "Enter Your Mobile Number";
                          }
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
                          if (value?.isEmpty ?? true) {
                            return "Enter Your Password";
                          }
                          return null;
                        },
                        decoration: FormFeildStyle("  Password"),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ReUseAbleElevatedButton(onTap: () async {
                        if (_form.currentState!.validate()) {

                          //jodi user 6 digit er kom password dei tahole ay msg show korbe
                          if (PasswordValue.text.length < 6) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Please Enter 6 digit Password")));
                          }


                          /*jodi password er length 6 digit ba 6 digit er beshi hoi tahole registration korte parbe
                          na hole parbe na
                          */

                          else{
                      /*
                      GetMethodRequester holo RestApi er class name

                       */
                            final result = await GetMethodRequester().PostRequest(
                                'https://task.teamrabbil.com/api/v1/registration', {
                              "email": EmailValue.text,
                              "firstName": FirstNameValue.text,
                              "lastName": LastNameValue.text,
                              "mobile": MobileValue.text,
                              "password": PasswordValue.text,
                              "photo": ""
                            });
                            if (result['status'] == 'success') {


                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      "Registration Successfull")));
                              EmailValue.text = "";
                              FirstNameValue.text = "";
                              LastNameValue.text = "";
                              MobileValue.text = "";
                              PasswordValue.text = "";
                            }
                          }
                        }
                      }),
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
            ),
          )),
    );
  }
}
