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
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: ReUseAbleCard(23, "New")),
              Expanded(child: ReUseAbleCard(23, "Complete")),
              Expanded(child: ReUseAbleCard(23, "Cancell")),
              Expanded(child: ReUseAbleCard(23, "InProgress")),
            ],
          )
        ],
      ),
    );
  }
}
