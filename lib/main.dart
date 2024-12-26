import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/first_page.dart';
import 'package:flutter_application_2/pages/home.dart';
import 'package:flutter_application_2/pages/second_page.dart';
import 'package:flutter_application_2/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/secondpage': (context) => SecondPage(),
        '/firstpage': (context) => FirstPage(),
        '/home': (context) => Home(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
