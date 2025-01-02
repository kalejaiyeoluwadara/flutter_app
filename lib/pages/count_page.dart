import 'package:flutter/material.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Center(child: Text('Flutter Demo Home Page')),
      ),
      body: Column(
        children: [
          Text(
            'You have pushed the button this many times',
            style: TextStyle(),
          ),
          Text(
            '0',
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
