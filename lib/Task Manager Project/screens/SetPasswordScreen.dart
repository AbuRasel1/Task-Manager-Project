import 'package:flutter/material.dart';

import '../style/Style.dart';
import '../widgets/BackGroundImage.dart';
import '../widgets/HaveAccount.dart';
import '../widgets/ReuseAbleElevatedButton.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  TextEditingController PasswordValue=TextEditingController();
  TextEditingController ConformPasswordValue=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BackgroundImage(
         child: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Set Password",style: Heading1TextStyle(colorDarkBlue),),

              SizedBox(height: 15,),
              Text("Minimum length password 8 character with letter and number combination",style: Heading6Style(colorLightGray),),
              SizedBox(height: 15,),
              TextFormField(
                obscureText: true,
                controller: PasswordValue,
                validator: (String ?value){
                  return null;
                },
                decoration: FormFeildStyle("Password: "),
              ),
              SizedBox(height: 15,),
              TextFormField(
                obscureText: true,
                controller: ConformPasswordValue,
                validator: (String ?value){
                  return null;
                },
                decoration: FormFeildStyle("Conform Password"),
              ),
              SizedBox(height: 15,),
              ReUseAbleElevatedButton(
                  text: "Confirm",
                  onTap: (){}),
              SizedBox(height: 15,),

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

    );
  }
}
