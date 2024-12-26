import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'First Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('HOME'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/home')
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('SETTINGS'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/settings')
              },
            ),
          ],
        ),
      ),
    );
  }
}
