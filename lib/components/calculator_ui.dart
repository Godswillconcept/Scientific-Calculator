// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:calculator/utils/color_guide.dart';
import 'package:calculator/components/calculator_button.dart';
import 'package:calculator/components/calculator_screen.dart';
import 'package:calculator/components/logic_button.dart';
import 'package:flutter/material.dart';

class CalculatorUi extends StatefulWidget {
  const CalculatorUi({Key? key}) : super(key: key);

  @override
  State<CalculatorUi> createState() => _CalculatorUiState();
}

class _CalculatorUiState extends State<CalculatorUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorGuide.backgroundColor,
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CalculatorScreen(),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 16.0, right: 16.0,),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: LogicButton(btnColor: ColorGuide.tertiaryBtn, btnVal: 'DEG', function: () {  },),
                ),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'CLS', function: () {  },),
                Spacer(flex: 1,),                
                LogicButton(btnColor: ColorGuide.tertiaryBtn, btnVal: 'ON', function: () {  },),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 10.0, right: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'n!', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'sqrt', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: '(', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: ')', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: '^', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'cbrt', function: () {  },),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 10.0, right: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'log', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'x2', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'hyp', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'sin', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'cos', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'tan', function: () {  },),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 10.0, right: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'Ran', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'In', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'MS', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'MC', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'M-', function: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'M+', function: () {  },),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '7', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '8', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '9', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.tertiaryBtn,
                  btnVal: 'DEL', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.tertiaryBtn,
                  btnVal: 'AC', function: () {  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '4', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '5', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '6', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'X', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '/', function: () {  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '1', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '2', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '3', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '+', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '-', function: () {  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '0', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '.', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'Exp', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'Ans', function: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '=', function: () {  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
