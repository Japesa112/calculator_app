import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;
  MyButton(
      {this.color,
      this.textColor,
      required this.buttonText,
      this.buttontapped});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          child: Container(
            color: color,
            child: Text(
              buttonText,
              style: TextStyle(
                  color: textColor, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
