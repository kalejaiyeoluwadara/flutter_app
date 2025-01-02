import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat_list.dart';
import 'package:flutter_application_2/components/archived.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ArchivedSection(
          archivedCount: 5,
        ),
        Expanded(
          child: ChatList(),
        ),
      ],
    );
  }
}
