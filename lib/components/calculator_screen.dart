// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator/utils/screen_text.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 22.0, left: 16.0, right: 16.0),
      width: double.maxFinite,
      height: 100.0,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ScreenText(
                      inputText: 'DEG',
                      inputSize: 14.0,
                    ),
                    ScreenText(
                      inputText: 'ON',
                      inputSize: 14.0,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: ScreenText(
                    inputText: '10 X 5',
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ScreenText(
                    inputText: '50',
                    inputSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
