import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback });

  // void checkboxCallback(bool checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });}
  //**using callback: Lifting State Up  to the parent W
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkboxCallback,
      // onChanged:(newValue) {
      // checkboxCallback(newValue)
      // },

    ),
    );
  }
}


