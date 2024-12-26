import 'package:flutter/Material.dart';

class TodoApp extends StatefulWidget {
  TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController myController = TextEditingController();
  String greetingMessage = '';
  void greetUser() {
    String username = myController.text;
    setState(() {
      greetingMessage = 'Hello, $username';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type your name',
              ),
            ),
            ElevatedButton(onPressed: greetUser, child: Text('Tap!'))
          ],
        ),
      )),
    );
  }
}
