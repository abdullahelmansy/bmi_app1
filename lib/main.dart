import 'package:bmi_app1/bmi_screen.dart';
import 'package:bmi_app1/resultScreen.dart';
import 'package:bmi_app1/task_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
