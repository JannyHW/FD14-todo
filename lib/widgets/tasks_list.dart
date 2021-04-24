import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fd14/widgets/task_tile.dart';
import 'package:fd14/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // using Consumer W (from Provider Package) to wrap ListView, so don't need to repeat code "Provider.of<TaskData>(context).tasks"
return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

//using ListView Builder for dynamic build
// return ListView.builder(
//     itemBuilder: (context, index) {
//       return TaskTile(
//         taskTitle: Provider.of<TaskData>(context).tasks[index].name,
//         isChecked: Provider.of<TaskData>(context).tasks[index].isDone,

//         checkboxCallback: (checkboxState) {
//           // setState(() {
//           //   widget.tasks[index].toggleDone();
//           // });
//         },
//       );
//     },
//     itemCount: Provider.of<TaskData>(context).tasks.length);
