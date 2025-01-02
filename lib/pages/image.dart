import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image.asset('assets/images/AIR-JORDAN.jpg'));
  }
}
