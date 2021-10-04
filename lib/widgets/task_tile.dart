import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Function(bool?) checkboxCallback;
  final bool? isChecked;
  final String taskTitle;
  final Function() longPressCallback;
  TaskTile(
      {this.isChecked = false,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
