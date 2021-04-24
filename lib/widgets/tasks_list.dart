import 'package:flutter/material.dart';
import 'package:fd14/widgets/task_tile.dart';
import 'package:fd14/models/task.dart';

class TasksList extends StatefulWidget {
//create tasks property, so it can be passed over
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: <Widget>[
    //     TaskTile(taskTile: tasks[0].name, isChecked: tasks[0].isDone),
    //     TaskTile(taskTile: tasks[1].name, isChecked: tasks[1].isDone),
    //     TaskTile(taskTile: tasks[2].name, isChecked: tasks[2].isDone),
    // ],
    // );

    //using ListView Builder for dynamic build
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            //widget refers to Stateful W (getting the property of tasks)
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,

            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        },
        itemCount: widget.tasks.length);
  }
}
