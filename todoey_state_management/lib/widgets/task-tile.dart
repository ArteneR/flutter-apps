import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkboxCallback;
  final void Function() longPressCallback;

  const TaskTile({
    Key? key,
    required this.taskTitle,
    this.isChecked = false,
    required this.checkboxCallback,
    required this.longPressCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}
