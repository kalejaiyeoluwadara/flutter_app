import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoApp(),
    );
  }
}
