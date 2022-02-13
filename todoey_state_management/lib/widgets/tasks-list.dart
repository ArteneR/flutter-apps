import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_state_management/models/task.dart';
import 'package:todoey_state_management/widgets/task-tile.dart';
import 'package:todoey_state_management/models/task-data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
