import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            // SizedBox(
            //   height: 20,
            // ),
            TextButton(
              onPressed: () {
                //add task
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                // padding: EdgeInsets.symmetric(
                //   horizontal: 150,
                // ),
              ),
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
