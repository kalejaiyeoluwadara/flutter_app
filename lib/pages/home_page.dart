import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    Center(
        child: Text(
      'Home Page',
      style: TextStyle(fontSize: 50),
    )),
    Center(
        child: Text(
      'Message Page',
      style: TextStyle(fontSize: 50),
    )),
    Center(
        child: Text(
      'Settings Page',
      style: TextStyle(fontSize: 50),
    )),
    Center(
        child: Text(
      'Account Page',
      style: TextStyle(fontSize: 50),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}
