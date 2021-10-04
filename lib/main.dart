import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';

void main() {
  runApp(
    MyApp(),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
