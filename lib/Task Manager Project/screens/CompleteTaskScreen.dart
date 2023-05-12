import 'package:all_flutter_project/Task%20Manager%20Project/widgets/ReUseAbleNewTask.dart';
import 'package:flutter/material.dart';

class CompleteTaskScreen extends StatefulWidget {
  const CompleteTaskScreen({Key? key}) : super(key: key);

  @override
  State<CompleteTaskScreen> createState() => _CompleteTaskScreenState();
}

class _CompleteTaskScreenState extends State<CompleteTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return ReUseAbleNewTask(
            Title: "This is title",
            Description: "This is Description",
            Date: "2-1-2000",
            Type: "Compete",
            OnTapEdit: () {},
            OnTapDelete: (){},
          );

    }


    );
    
  }
}
