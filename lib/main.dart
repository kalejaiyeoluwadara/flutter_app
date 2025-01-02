import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/count_model.dart';
import 'package:flutter_application_2/pages/count_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CountModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Count app',
      debugShowCheckedModeBanner: false,
      home: const CountPage(), // <--- Now inside MaterialApp
    );
  }
}
