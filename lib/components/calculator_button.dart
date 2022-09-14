// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color btnColor;
  final String btnVal;
  final double btnHeight;
  final double btnWidth;
  final Function buttonPress;

  const CalculatorButton({
    Key? key,
    required this.btnColor,
    required this.btnVal,
    this.btnHeight = 50.0,
    this.btnWidth = 50.0,
    required this.buttonPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => buttonPress(btnVal),
      child: Container(
        width: btnWidth,
        height: btnHeight,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          btnVal,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}
