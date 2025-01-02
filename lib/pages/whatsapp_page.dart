import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat_list.dart';
import 'package:flutter_application_2/components/archived.dart';
import 'package:flutter_application_2/pages/chats_page.dart';

class WhatsappPage extends StatefulWidget {
  const WhatsappPage({super.key});

  @override
  _WhatsappPageState createState() => _WhatsappPageState();
}

class _WhatsappPageState extends State<WhatsappPage> {
  int _selectedIndex = 0;

  // List of widgets for the pages corresponding to each bottom nav item
  final List<Widget> _pages = [
    ChatsPage(),
    Center(child: Text('Updates Page', style: TextStyle(color: Colors.white))),
    Center(
        child: Text('Communities Page', style: TextStyle(color: Colors.white))),
    Center(child: Text('Calls Page', style: TextStyle(color: Colors.white))),
  ];

  // Method to handle navigation
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[200],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.grey[200],
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[200],
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey[200],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.tealAccent[400],
        unselectedItemColor: Colors.grey[600],
        currentIndex: _selectedIndex, // Current selected index
        onTap: _onItemTapped, // Handle navigation
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_outlined),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_outlined),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
