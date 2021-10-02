import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: TaskCheckbox(isChecked),
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;

  TaskCheckbox(this.checkBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: checkBoxState,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          // setState(() {
          //   checkBoxState = newValue;
          // });
        });
  }
}
