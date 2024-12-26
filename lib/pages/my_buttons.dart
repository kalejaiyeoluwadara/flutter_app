import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.text, required this.onPressed, super.key});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColorLight,
      child: Text(text),
    );
  }
}
