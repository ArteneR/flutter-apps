import 'package:flutter/material.dart';
import 'package:todoey_state_management/screens/tasks-screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}
