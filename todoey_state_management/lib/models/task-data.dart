import 'package:flutter/foundation.dart';
import 'package:todoey_state_management/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  List<Task> get tasks {
    return _tasks;
  }

  void add() {
    notifyListeners();
  }
}
