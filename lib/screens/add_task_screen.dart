import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:fd14/models/task.dart';
import 'package:fd14/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF3700B3),
                ),
              ),
              TextField(
                // autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle =
                      newText; // *step 1: users type data(newTaskTile)
                },
              ),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xFF3700B3),
                 onPressed: () {
                   //addTask() from task_data.dart
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);

                  // addTaskCallback(newTaskTitle);// *step 2 : users put Add Btn
                },
              ),
            ]),
      ),
    );
  }
}
