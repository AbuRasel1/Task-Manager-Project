import 'package:all_flutter_project/Task%20Manager%20Project/widgets/ReUseAbleNewTask.dart';
import 'package:flutter/material.dart';

import '../widgets/ReUseAbleCard1.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: ReUseAbleCard(23, "New")),
                Expanded(child: ReUseAbleCard(23, "Complete")),
                Expanded(child: ReUseAbleCard(23, "Cancell")),
                Expanded(child: ReUseAbleCard(23, "InProgress")),
              ],
            ),
            SizedBox(
              height: 16,
            ),

            ReUseAbleNewTask(
              Title: "This is title",
              Description: "This is Description",
              Date: "2-1-2000",
              Type: "New",
              OnTapEdit: () {},
              OnTapDelete: (){},
            ),
            ReUseAbleNewTask(
              Title: "This is title",
              Description: "This is Description",
              Date: "2-1-2000",
              Type: "New",
              OnTapEdit: () {},
              OnTapDelete: (){},
            ),
            ReUseAbleNewTask(
              Title: "This is title",
              Description: "This is Description",
              Date: "2-1-2000",
              Type: "New",
              OnTapEdit: () {},
              OnTapDelete: (){},
            ),
            ReUseAbleNewTask(
              Title: "This is title",
              Description: "This is Description",
              Date: "2-1-2000",
              Type: "New",
              OnTapEdit: () {},
              OnTapDelete: (){},
            ),
            ReUseAbleNewTask(
              Title: "This is title",
              Description: "This is Description",
              Date: "2-1-2000",
              Type: "New",
              OnTapEdit: () {},
              OnTapDelete: (){},
            ),
          ],
        ),
      ),
    );
  }
}

