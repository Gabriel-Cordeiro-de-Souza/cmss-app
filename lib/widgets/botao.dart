import 'package:flutter/material.dart';

//atalho stless
class MyCustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData? icon;
  final String? text;
  const MyCustomButton({super.key, this.onPressed, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                text ?? '',
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ));
  }
}