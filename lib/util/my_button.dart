import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  Function()? onPress;

  MyButton({
    super.key,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: Colors.amber[700],
      child: Text(text),
    );
  }
}
