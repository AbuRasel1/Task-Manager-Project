import 'package:flutter/material.dart';

import '../screens/LoginScreen.dart';
import '../style/Style.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Have Account ? ",
          style: Heading6Style(colorDarkBlue),
        ),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
        }, child: Text("SingIn",style: Heading6Style(colorGreen),))
      ],

    );

  }
}
