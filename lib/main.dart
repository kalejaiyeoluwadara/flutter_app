import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/count_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CountPage();
  }
}
