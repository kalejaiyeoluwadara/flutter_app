import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final List<Map<String, dynamic>> chats = [
    {
      'name': 'Dara',
      'message': 'Hey there! I am using WhatsApp.',
      'time': '10:00 PM',
      'pinned': true
    },
    {
      'name': 'Alex',
      'message': 'Let\'s catch up tomorrow.',
      'time': '9:45 PM',
      'pinned': true
    },
    {
      'name': 'John',
      'message': 'Meeting at 3 PM.',
      'time': '8:30 PM',
      'unread': 2
    },
    {
      'name': 'Emma',
      'message': 'Thanks for your help!',
      'time': '7:15 PM',
      'unread': 5
    },
    {
      'name': 'Sophia',
      'message': 'Can you send the files?',
      'time': '6:45 PM',
      'unread': 1
    },
    {
      'name': 'Liam',
      'message': 'It was great catching up!',
      'time': '5:30 PM',
      'unread': 3
    },
    {
      'name': 'Olivia',
      'message': 'Are we still on for dinner?',
      'time': '4:15 PM',
      'unread': 4
    },
    {'name': 'Ethan', 'message': 'Please check your email.', 'time': '3:00 PM'},
    {
      'name': 'Ava',
      'message': 'Don’t forget the meeting at 2.',
      'time': '2:30 PM',
      'unread': 6
    },
    {'name': 'Mia', 'message': 'I’ll call you later.', 'time': '1:45 PM'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ChatTile(
          name: chat['name'],
          message: chat['message'],
          time: chat['time'],
          pinned: chat['pinned'] ?? false,
          unreadCount: chat['unread'] ?? 0,
        );
      },
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final bool pinned;
  final int unreadCount;

  const ChatTile({
    required this.name,
    required this.message,
    required this.time,
    this.pinned = false,
    this.unreadCount = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      subtitle: Text(
        message,
        style: TextStyle(color: Colors.grey[500], fontSize: 14),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(color: Colors.grey[500], fontSize: 12),
          ),
          SizedBox(height: 5),
          if (pinned)
            Icon(
              Icons.push_pin,
              color: Colors.grey[300],
              size: 16,
            )
          else if (unreadCount > 0)
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Text(
                unreadCount.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
