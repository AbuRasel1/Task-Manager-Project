//Akhane theke new task add kora jabe subject and Description

import 'package:all_flutter_project/Task%20Manager%20Project/style/Style.dart';
import 'package:all_flutter_project/Task%20Manager%20Project/widgets/BackGroundImage.dart';
import 'package:all_flutter_project/Task%20Manager%20Project/widgets/ReUseAbleAppBar.dart';
import 'package:all_flutter_project/Task%20Manager%20Project/widgets/ReuseAbleElevatedButton.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController AddTaskValue = TextEditingController();
  TextEditingController AddDescriptionValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReUseAbleAppBar(context, isTappAble: false),
      body: BackgroundImage(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add New Task",
                style: Heading1TextStyle(colorDarkBlue),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: AddTaskValue,
                validator: (String? value) {
                  return null;
                },
                decoration: FormFeildStyle("Subject"),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: AddDescriptionValue,
                validator: (String? value) {
                  return null;
                },
                maxLines: 5,
                decoration: FormFeildStyle("Description"),
              ),
              SizedBox(
                height: 20,
              ),
              ReUseAbleElevatedButton(onTap: () {})
            ],
          ),
        ),
      )),
    );
  }
}
