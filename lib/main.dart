import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/whatsapp_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      debugShowCheckedModeBanner: false,
      home: const WhatsappPage(),
    );
  }
}
