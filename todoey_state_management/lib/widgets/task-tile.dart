import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkboxCallback;

  TaskTile({
    required this.taskTitle,
    this.isChecked = false,
    required this.checkboxCallback,
  });

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
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final ValueChanged<bool?> toggleCheckboxState;

//   TaskCheckbox({
//     required this.checkboxState,
//     required this.toggleCheckboxState,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkboxState,
//       activeColor: Colors.lightBlueAccent,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
