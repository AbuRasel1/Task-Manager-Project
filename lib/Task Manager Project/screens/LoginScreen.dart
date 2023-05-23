import 'package:all_flutter_project/Task%20Manager%20Project/RestApi/RestApi.dart';
import 'package:all_flutter_project/Task%20Manager%20Project/utils/UserData.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    //form validation er jonno use koreci
    final _form = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Form(
                  key: _form,
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
                        controller: EmailValue,
                        //value newar jonno use kora hoice
                        validator: (String? value) {
                          if (value?.isEmpty ?? true) {
                            return "Please Enter Email Address";
                          }

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
                          if (value?.isEmpty ?? true) {
                            return "Please Enter Password";
                          }

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
                        onTap: () async {
                          if (_form.currentState!.validate()) {
                            /*
                            akhane jodi user 6 digit er kom number diye login korar try kore parbe na
                            jodi password er length 6 ba 6 er beshi password dei taholei login korte parbe

                            6 digit er kom password dile nicher msg ta dibe
                             */
                            if (PasswordValue.text.length < 6) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          "Please Enter 6 digit password")));
                            }

                            // password er length 6 digit er beshi User login korte parbe

                            else {
                              final result = await GetMethodRequester()
                                  .PostRequest(
                                      "https://task.teamrabbil.com/api/v1/login",
                                      {
                                    "email": EmailValue.text,
                                    "password": PasswordValue.text,
                                  });

                              if (result["status"] == "success") {
                                /*
                                Share preference(mane Jodi kono apps a login kori pore app ta restart dei
                                tahole jeno abar login screen a na ese login korar por je page a asto oi page a ase)

                                */

                                /*
                            niche SharePref use kore ki ki value loging korar por pawa jai ta newar jonno
                            (SharedPreferences.getInstance()) use koreci jeno data gula niye pore app ta restart
                            korle login page na giye Main page a jai
                             */

                                final sharePref =
                                    await SharedPreferences.getInstance();

                                /*User data te token,firstName,lastName,email
                                agula value sob userData class Mane UserData file a patai disi
                                jeno appBar a ay value gual use korte pari
                                 */

                                UserData.token = result['token'];
                                UserData.firstName =
                                    result['data']['firstName'];
                                UserData.lastName = result['data']['lastName'];
                                UserData.email = result['data']['email'];

                                sharePref.setString(
                                    'email', result['data']['email']);

                                sharePref.setString(
                                    'firstName', result['data']['firstName']);

                                sharePref.setString(
                                    'lastName', result['data']['lastName']);

                                sharePref.setString('token', result['token']);

                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MainBottomNavBarScreen()),
                                    (route) => false);
                                ToastMessage("Login SuccessFull");
                              }
                              else {
                                ToastMessage("Email/Password Worng Please Try Again ");

                              }
                            }
                          }
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
                                      builder: (builder) =>
                                          ForgotPassworScreen()));
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationScreen()));
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
