import 'package:flutter/material.dart';

Widget mediumButtons({
  required String label,
  required Color color,
  required Color textColor,
  required void Function() buttonAction,
}) {
  return ElevatedButton(
    onPressed: buttonAction,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      foregroundColor: textColor, // Set the background color to red
    ),
    child: Text(label),
  );
}
