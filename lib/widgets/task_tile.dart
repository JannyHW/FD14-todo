import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback });

  // void checkboxCallback(bool checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });}
  //**using callback: Lifting State Up  to the parent W
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
        style: TextStyle(
          color: Color(0xFF3700B3),
          fontWeight: FontWeight.bold,
          fontSize: 22,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
      activeColor: Color(0xFFFF0266),
      value: isChecked,
      onChanged: checkboxCallback,
      // onChanged:(newValue) {
      // checkboxCallback(newValue)
      // },

    ),
    );
  }
}


