import 'package:flutter/material.dart';

Card ReUseAbleCard(int Counter,String Title) {
  return Card(
    elevation: 4,
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(14),
      child: Column(
        children: [
          Text(Counter.toString(),style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700
          ),),
          //fitted box use koreci jeno Text full box a set hoi
          FittedBox(child: Text("${Title} Task"))

        ],
      ),
    ),
  );
}
