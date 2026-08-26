import 'package:flutter/material.dart';
import 'package:taskmanager/api/apiClient.dart';
import 'package:taskmanager/utility/utility.dart';

class newTaskList extends StatefulWidget {
  const newTaskList({super.key});

  @override
  State<newTaskList> createState() => _newTaskListState();
}

class _newTaskListState extends State<newTaskList> {
  List TaskItem=[];
  bool Loading=true;

      @override
      void initState(){
      CallData();
      super.initState();
  }

  CallData()async{
    var data= await TaskListRequest("New");
    setState(() {
      Loading=false;
      TaskItem=data;
    });
  }


  @override
  Widget build(BuildContext context) {
        return Loading?(Center(child: CircularProgressIndicator(),)):(Center(child: Text('New'),));
  }
}
