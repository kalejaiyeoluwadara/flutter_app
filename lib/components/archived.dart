import 'package:flutter/material.dart';

class ArchivedSection extends StatelessWidget {
  final int archivedCount;

  const ArchivedSection({super.key, this.archivedCount = 0});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.archive_outlined,
        color: Colors.white,
      ),
      title: Text(
        'Archived',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: archivedCount > 0
          ? Text(
              archivedCount.toString(),
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
    );
  }
}
