import 'package:flutter/material.dart';
import 'package:test_todo_hive/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final dynamic controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber[300],
      content: Container(
        padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
        height: 150,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "New task",
              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(text: 'Save', onPress: onSave,),
                MyButton(text: 'Cancel', onPress: onCancel,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
