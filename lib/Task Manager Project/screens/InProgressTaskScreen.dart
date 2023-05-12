import 'package:all_flutter_project/Task%20Manager%20Project/widgets/ReUseAbleNewTask.dart';
import 'package:flutter/material.dart';

class InProgressScreen extends StatefulWidget {
  const InProgressScreen({Key? key}) : super(key: key);

  @override
  State<InProgressScreen> createState() => _InProgressScreenState();
}

class _InProgressScreenState extends State<InProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return ReUseAbleNewTask(
            Title: "This is title",
            Description: "This is Description",
            Date: "2-1-2000",
            Type: "InProgress",
            OnTapEdit: () {},
            OnTapDelete: (){},
          );

        }


    );
  }
}
