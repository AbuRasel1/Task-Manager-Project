import 'package:flutter/material.dart';

class CancellTaskScreen extends StatefulWidget {
  const CancellTaskScreen({Key? key}) : super(key: key);

  @override
  State<CancellTaskScreen> createState() => _CancellTaskScreenState();
}

class _CancellTaskScreenState extends State<CancellTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("cancell task"),
    );
  }
}
