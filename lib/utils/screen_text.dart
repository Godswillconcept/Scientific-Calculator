// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenText extends StatelessWidget {
  final String inputText;
  final FontWeight inputWeight;
  final double inputSize;
  const ScreenText(
      {Key? key, required this.inputText, this.inputWeight = FontWeight.w400, this.inputSize = 22})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'sans-serif',
        fontSize: inputSize,
        fontWeight: inputWeight,
      ),
    );
  }
}
