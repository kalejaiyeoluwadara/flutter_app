import 'package:flutter/material.dart';

class WhatsappPage extends StatelessWidget {
  const WhatsappPage({super.key});

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
      body: Column(
        children: [
          // Search
          Container(
            color: Colors.grey[850],
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: TextField(
              style: TextStyle(fontSize: 16, color: Colors.grey[200]),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Ask Meta or Search',
                hintStyle: TextStyle(color: Colors.grey[500]),
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
              ),
            ),
          ),
          // locked chat

          // Archived box
          ListTile(
            title: Text(
              'Archived',
              style: TextStyle(color: Colors.grey[200], fontSize: 20),
            ),
            leading: Icon(
              Icons.archive,
              color: Colors.grey[100],
            ),
            trailing: Text(
              '1',
              style: TextStyle(fontSize: 15, color: Colors.green),
            ),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // dp
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey[200],
                        size: 30,
                      ),
                    ),
                    // info
                    Container(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dara',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            'Hey there! I am using WhatsApp.',
                            style: TextStyle(color: Colors.grey[200]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '10:00 PM',
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Icon(
                        Icons.archive_sharp,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
          // Add more widgets here for content
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.tealAccent[400],
        unselectedItemColor: Colors.grey[600],
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
