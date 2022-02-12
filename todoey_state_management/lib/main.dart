import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_state_management/screens/tasks-screen.dart';
import 'package:todoey_state_management/models/task-data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
