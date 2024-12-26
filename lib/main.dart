import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Dara', 'Dara', 'dara'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: names.length, // Use the length of the list
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(names[index]), // Pass the correct `index`
            );
          },
        ),
      ),
    );
  }
}
