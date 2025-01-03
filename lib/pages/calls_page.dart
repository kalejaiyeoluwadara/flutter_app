import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> calls = [
      {'name': 'Dara', 'time': 'Today, 10:00 AM', 'type': 'missed'},
      {'name': 'John', 'time': 'Today, 9:45 AM', 'type': 'incoming'},
      {'name': 'Emily', 'time': 'Yesterday, 8:30 PM', 'type': 'outgoing'},
      {'name': 'Alice', 'time': 'Yesterday, 6:00 PM', 'type': 'missed'},
      {'name': 'Michael', 'time': '2 days ago, 5:00 PM', 'type': 'incoming'},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Recent',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final call = calls[index];
          final isMissed = call['type'] == 'missed';

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[800],
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text(
              call['name'],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(
                  call['type'] == 'incoming'
                      ? Icons.call_received
                      : call['type'] == 'outgoing'
                          ? Icons.call_made
                          : Icons.call_missed,
                  size: 16,
                  color: isMissed ? Colors.red : Colors.green,
                ),
                const SizedBox(width: 5),
                Text(
                  call['time'],
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.call, color: Colors.grey),
                  onPressed: () {
                    // Handle voice call action
                  },
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[600],
        onPressed: () {
          // Handle adding a new call
        },
        child: const Icon(Icons.add_call, color: Colors.black),
      ),
    );
  }
}
