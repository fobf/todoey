import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Function(bool?) checkboxCallback;

  final bool? isChecked;
  final String taskTitle;
  TaskTile(
      {this.isChecked = false,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
