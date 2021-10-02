import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;
  void checkBoxCallback(bool? checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: TaskCheckbox(isChecked, checkBoxCallback),
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkBoxState;
  final void Function(bool?) toggleCheckBoxState;

  TaskCheckbox(this.checkBoxState, this.toggleCheckBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckBoxState,
    );
  }
}
