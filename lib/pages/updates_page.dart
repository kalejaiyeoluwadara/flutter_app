import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat_list.dart';
import 'package:flutter_application_2/components/status.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of statuses with names and colors
    final List<Map<String, dynamic>> statuses = [
      {'name': 'Dara', 'color': Colors.blue},
      {'name': 'John', 'color': Colors.green},
      {'name': 'Emily', 'color': Colors.purple},
      {'name': 'Alice', 'color': Colors.orange},
      {'name': 'Michael', 'color': Colors.red},
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Status Section
            const Text(
              'Status',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200, // Height for horizontal ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: statuses.length,
                itemBuilder: (context, index) {
                  final status = statuses[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Status(
                      name: status['name'], // Pass the name
                      color: status['color'], // Pass the color
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // Channels Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Channels',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle "Explore" tap
                  },
                  child: Row(
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 63, 233, 72),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: const Color.fromARGB(255, 63, 233, 72),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // ChatList Section
            Expanded(
              child: ChatList(), // Ensure ChatList takes up remaining space
            ),
          ],
        ),
      ),
    );
  }
}
