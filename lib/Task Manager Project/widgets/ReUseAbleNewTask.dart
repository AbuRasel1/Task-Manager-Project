import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReUseAbleNewTask extends StatelessWidget {
  const ReUseAbleNewTask({
    Key? key,
    required this.Title,
    required this.Description,
    required this.Type,
    required this.Date,
    required this.OnTapEdit,
    required this.OnTapDelete,
  }) : super(key: key);

/*
akhane jokhon user ReUseAbleNewTask ata call korbe tokon nicher
Title,Description,Type,Date agular value dite hobe na hole error dekhabe
 */
  final Title, Description, Type, Date;

  /*
  VoidCallbackAction use kora hoice onTap function user diye dibe
  ay ReUseAbeNewTask call korar sathe sathe
   */
  final VoidCallback OnTapEdit, OnTapDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListTile(
        tileColor: Colors.greenAccent.withOpacity(0.2),
        title: Text(Title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Description),
            Text(Date),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //chip circle  create kore dei
                Chip(
                  label: Text(Type),
                  backgroundColor: Colors.greenAccent,
                ),
                //buttonBar er vitor button newa jai
                ButtonBar(
                  children: [
                    IconButton(
                        onPressed: OnTapEdit,
                        icon: Icon(
                          Icons.edit,
                          color: Colors.greenAccent,
                        )),
                    IconButton(
                      onPressed: OnTapDelete,
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
