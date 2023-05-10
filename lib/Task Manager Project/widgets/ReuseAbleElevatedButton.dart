//Akhane button use kore sob jai gai use kora hoice jake Re useable widget bole

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/Style.dart';

class ReUseAbleElevatedButton extends StatelessWidget {
  const ReUseAbleElevatedButton({
    Key? key, required this.onTap,  this.text,
  }) : super(key: key);

  final VoidCallback onTap;//ata use kore ontap a ki hobe oita oi function theke dewa jabe
  final String? text;//ata use kora hoice button er text name dewar jonno

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height:50,
        child: ElevatedButton(
          style: AppButtonStyle(),
          //akhane inline if else use kora hoice jodi (ReuseAbleElevatedButton) er vitor
          //kono text dei tahole oita button er vitor dekhabe ar kono text na dile icon dekhabe
          child:text !=null ? Text(text ?? ''):(const Icon(Icons.arrow_circle_right_outlined,size: 30,)),

          onPressed: onTap,

        )

    );
  }
}
