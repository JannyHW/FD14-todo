import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fd14/models/task_data.dart';
import 'package:fd14/screens/tasks_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //create Provider on the top of parent(MaterialApp)
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
