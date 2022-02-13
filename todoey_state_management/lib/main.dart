import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_state_management/screens/tasks-screen.dart';
import 'package:todoey_state_management/models/task-data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
