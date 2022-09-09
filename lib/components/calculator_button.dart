// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color btnColor;

  final String btnVal;
  final double btnHeight;
  final double btnWidth;
  final Function()? onPress;
  const CalculatorButton({
    Key? key,
    required this.btnColor,
    required this.btnVal,
    this.btnHeight = 50.0,
    this.btnWidth = 50.0, 
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: btnWidth,
        height: btnHeight,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
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
