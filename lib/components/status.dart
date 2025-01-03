import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  final String name;
  final Color color;

  const Status({super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Height of the main container
      width: 150, // Width of the main container
      margin: const EdgeInsets.only(bottom: 10), // Add spacing between items
      decoration: BoxDecoration(
        color: color, // Background color passed as parameter
        borderRadius: BorderRadius.circular(20), // Slightly rounded corners
      ),
      child: Stack(
        children: [
          // User image at the top-right corner
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 40, // Size of the circle
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[800], // Placeholder color
              ),
            ),
          ),
          // Name text at the bottom-left corner
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              name, // Name passed as parameter
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
