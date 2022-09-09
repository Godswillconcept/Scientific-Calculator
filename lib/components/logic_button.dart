// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class LogicButton extends StatelessWidget {
  final Color btnColor;
  final String btnVal;
  final double btnHeight;
  final double btnWidth;
  final double valSize;
  final void Function()? onPress;
  const LogicButton(
      {Key? key,
      required this.btnColor,
      required this.btnVal,
      this.btnHeight = 25.0,
      this.btnWidth = 50.0,
      this.valSize = 22.0,
      required this.onPress})
      : super(key: key);

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
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          btnVal,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
            fontSize: valSize,
          ),
        ),
      ),
    );
  }
}
