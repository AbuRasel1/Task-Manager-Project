import 'package:all_flutter_project/Task%20Manager%20Project/screens/AddTaskScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/ReUseAbleAppBar.dart';
import 'CancellTaskScreen.dart';
import 'CompleteTaskScreen.dart';
import 'InProgressTaskScreen.dart';
import 'NewTaskScreen.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  int CurrentSelectedScreen = 0;

  //list er moddhe je je statefull widget gula create koreci seigular name diyeci jeno pore agula
  //oi icon er opor click korle oi page a jabe
  List screen = [
    NewTaskScreen(),
    CompleteTaskScreen(),
    CancellTaskScreen(),
    InProgressScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ay appbar nicher jei icon a click kore oi page a gele o ay same appbar dekhabe
      appBar: ReUseAbleAppBar(context),
      /*
      akhane condion use koreci inline if else{(conditon)?true:false()} jodi CurrentSelectedScreen==0
        hole flaoting action button dekhabe na hole dekhabe na
      floating
       */

      floatingActionButton: (CurrentSelectedScreen == 0)
          ? FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => AddTaskScreen()));
              },
              child: Icon(
                Icons.add,
              ),
              backgroundColor: Colors.greenAccent,
            )
          : (SizedBox()),

      /*
      akhane current selected screen er je value er opor click korbo
      oi screen a jabe
      1 no icon a click korle select screen value 0 hobe and new task page a jabe
      2 no icon a click korle select screen value 0 hobe and completed task page a jabe
      avabe jokhon je page a click korbo oi page a jabe
       */
      body: screen[CurrentSelectedScreen],

      //Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        //item unselected  gray color
        selectedItemColor: Colors.greenAccent,
        //item select color green
        currentIndex: CurrentSelectedScreen,
        //jokhon je icon a click korbo tokhon sei icon select hobe and color change hoye jabe
        showSelectedLabels: true,
        //selected icon er label show korbe
        showUnselectedLabels: true,
        //unselected icon er label show korbe always

        elevation: 10,

        onTap: (int index) {
          CurrentSelectedScreen =
              index; //akhane current selected screen er value hobe index er value
          setState(
              () {}); //set state use korle onno page a giye oi page a ja ase reload nibe
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.task_rounded),
              label: ("New"),
              //botton navbar er background white hobe
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_outline_sharp), label: "Completed"),
          BottomNavigationBarItem(icon: Icon(Icons.cancel), label: "Cancelled"),
          BottomNavigationBarItem(
              icon: Icon(Icons.refresh_outlined), label: "In Progress"),
        ],
      ),
    );
  }
}
