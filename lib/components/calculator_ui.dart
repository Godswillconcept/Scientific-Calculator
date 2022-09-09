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
                  child: LogicButton(btnColor: ColorGuide.tertiaryBtn, btnVal: 'DEG', onPress: () {  },),
                ),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'CLS', onPress: () {  },),
                Spacer(flex: 1,),                
                LogicButton(btnColor: ColorGuide.tertiaryBtn, btnVal: 'ON', onPress: () {  },),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 10.0, right: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'n!', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'sqrt', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: '(', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: ')', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: '^', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'cbrt', onPress: () {  },),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 10.0, right: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'log', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'x2', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'hyp', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'sin', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'cos', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'tan', onPress: () {  },),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 10.0, right: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'Ran', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'In', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'MS', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'MC', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'M-', onPress: () {  },),
                LogicButton(btnColor: ColorGuide.secondaryBtn, btnVal: 'M+', onPress: () {  },),
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
                  btnVal: '7', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '8', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '9', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.tertiaryBtn,
                  btnVal: 'DEL', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.tertiaryBtn,
                  btnVal: 'AC', onPress: () {  },
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
                  btnVal: '4', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '5', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '6', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'X', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '/', onPress: () {  },
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
                  btnVal: '1', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '2', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '3', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '+', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '-', onPress: () {  },
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
                  btnVal: '0', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '.', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'Exp', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'Ans', onPress: () {  },
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '=', onPress: () {  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
