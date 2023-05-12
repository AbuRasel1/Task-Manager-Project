import 'package:all_flutter_project/Task%20Manager%20Project/widgets/ReUseAbleNewTask.dart';
import 'package:flutter/material.dart';

class CancellTaskScreen extends StatefulWidget {
  const CancellTaskScreen({Key? key}) : super(key: key);

  @override
  State<CancellTaskScreen> createState() => _CancellTaskScreenState();
}

class _CancellTaskScreenState extends State<CancellTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return ReUseAbleNewTask(
            Title: "This is title",
            Description: "This is Description",
            Date: "2-1-2000",
            Type: "Cancell",
            OnTapEdit: () {},
            OnTapDelete: (){},
          );

        }


    );
  }
}
