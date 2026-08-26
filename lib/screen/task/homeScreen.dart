import 'package:flutter/material.dart';
import 'package:taskmanager/component/appBottomNav.dart';
import '../../component/cancelTaskList.dart';
import '../../component/completedTaskList.dart';
import '../../component/newTaskList.dart';
import '../../component/progressTaskList.dart';
import 'homeScreen.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  int TabIndex=0;

  onItemTapped(int index){
    setState(() {
    TabIndex=index;
    });
  }
  final widgetOptions=[
    newTaskList(),
    progressTaskList(),
    completedTaskList(),
    cancelTaskList(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ebo Task'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: widgetOptions.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav( TabIndex, onItemTapped),
    );
  }
}
