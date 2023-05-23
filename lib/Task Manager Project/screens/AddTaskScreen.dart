//Akhane theke new task add kora jabe subject and Description

import 'package:all_flutter_project/Task%20Manager%20Project/RestApi/RestApi.dart';
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

  final _form = GlobalKey<FormState>();

  bool Inprogress=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReUseAbleAppBar(context, isTappAble: false),
      body: BackgroundImage(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _form,
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
                    //.trim() use koreci jeno user space diye form submit na korte pare
                    if (value?.trim().isEmpty ?? true) {
                      return "Please Add New Task";
                    }
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
                    //.trim() use koreci jeno user space diye form submit na korte pare
                    if (value?.trim().isEmpty ?? true) {
                      return "Please Enter Description";
                    }
                    return null;
                  },
                  maxLines: 5,
                  decoration: FormFeildStyle("Description"),
                ),
                SizedBox(
                  height: 20,
                ),
                if(Inprogress)
                  Center(child:CircularProgressIndicator())
                else
                  ReUseAbleElevatedButton(onTap: () async {
                  if (_form.currentState!.validate()) {
                    /*
                    Inprogress= true rakhci jeno add task add successfully add howar age porjonto
                    jeno button er jaigai circuller progress dekhai
                     */
                    Inprogress=true;
                    setState(() {

                    });
                    final response =await GetMethodRequester().PostRequest(
                        "https://task.teamrabbil.com/api/v1/createTask", {
                      "title": AddTaskValue.text,
                      "description": AddTaskValue.text,
                    });
                    /*
                    Inprogress= false rakhci jeno add task add successfully add howar por
                    button abar dekhai
                     */
                    Inprogress=false;
                    setState(() {

                    });

                    if(response['status']=='success'){
                      //form er value api a send korar por formFeild ta clear hoye jabe
                      AddTaskValue.clear();
                      AddDescriptionValue.clear();
                      ToastMessage("Add Task SuccessFull");


                    }
                    else{
                      ToastMessage("Add Task Not SuccessFull");
                    }
                  }
                })
              ],
            ),
          ),
        ),
      )),
    );
  }
}
