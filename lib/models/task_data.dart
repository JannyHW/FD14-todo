//For v2: useing Provider package
import 'package:flutter/material.dart';
import 'package:fd14/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Todo1'),
    Task(name: 'Todo2'),
    Task(name: 'Todo3')
  ];

  //from dart.collection
  // a warapper around the original _tasks: it cannot be mutated
   UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  //create method to pass a new task to List of Tasks
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

    void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
