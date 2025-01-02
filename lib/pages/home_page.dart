import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                      child: Text(
                'LOGO',
                style: TextStyle(fontSize: 35),
              ))),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
