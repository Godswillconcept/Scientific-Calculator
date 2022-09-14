// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:calculator/utils/color_guide.dart';
import 'package:calculator/components/calculator_button.dart';
import 'package:calculator/components/logic_button.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

class CalculatorUi extends StatefulWidget {
  const CalculatorUi({Key? key}) : super(key: key);

  @override
  State<CalculatorUi> createState() => _CalculatorUiState();
}

class _CalculatorUiState extends State<CalculatorUi> {
  String equation = '0';
  String result = '0';
  String memory = "";
  void btnOnClick(String btnVal) {
    debugPrint(btnVal);
    setState(() {
      if (btnVal == 'CLS') {
        equation = "0";
        result = "0";
      } else if (btnVal == 'DEL') {
        equation = equation.substring(0, equation.length - 1);
        if (equation.isEmpty) {
          equation = "0";
          result = "0";
        }
      } else if (btnVal == 'n!') {
        equation = "$equation!";
      } else if (btnVal == '√') {
       if (equation.isEmpty || equation == "0") {
         equation = btnVal;
       } else {
         equation + btnVal;
       }
      } else if (btnVal == '(') {
        equation = equation + btnVal;
      } else if (btnVal == ')') {
        equation = equation + btnVal;
      } else if (btnVal == 'x^y') {
        equation = "$equation^";
      } else if (btnVal == '∛') {
        equation = btnVal;
      } else if (btnVal == 'log') {
        equation = btnVal;
      } else if (btnVal == 'x²') {
        equation = "$equation²";
      } else if (btnVal == 'hyp') {
        // equation = btnVal;
      } else if (btnVal == 'sin') {
        equation = btnVal;
      } else if (btnVal == 'cos') {
        equation = btnVal;
      } else if (btnVal == 'tan') {
        equation = "$btnVal(";
      } else if (btnVal == 'Ran') {
        // equation = btnVal;
      } else if (btnVal == 'In') {
        // equation = "$btnVal(";
      } else if (btnVal == 'MS') {
        memory = equation;
        equation = "0";
      } else if (btnVal == 'MC') {
        // equation = btnVal;
      } else if (btnVal == 'M-') {
        equation = btnVal;
      } else if (btnVal == 'M+') {
        equation =  btnVal;
      } else if (btnVal == 'DEG') {
        equation = "";
      } else if (btnVal == 'AC') {
        btnVal = "0";
        equation = "0";
        result = "0";
      } else if (btnVal == 'ON') {
      } else if (btnVal == '=') {
        var expression = equation;
        expression = expression.replaceAll("X", "*");
        expression = expression.replaceAll("÷", "/");
        expression = expression.replaceAll("n!", "!");
        expression = expression.replaceAll("√", "sqrt");
        expression = expression.replaceAll("²", "^2");

        try {
          Parser p = Parser();
          // Expression exp = p.parse("2^2");
        
          Expression exp = p.parse(expression);
          debugPrint(" equation: $equation");
          debugPrint(" expression: $expression");
          ContextModel cm = ContextModel();
          result = "${exp.evaluate(EvaluationType.REAL, cm)}";
          debugPrint('res: ${exp.evaluate(EvaluationType.REAL, cm)}');
        } catch (e) {
          result = "Error";
        }
      } else {
        if (equation == '0') {
          equation = btnVal;
        } else {
          equation = equation + btnVal;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorGuide.backgroundColor,
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.maxFinite,
            height: 100.0,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('DEG', style: TextStyle(fontSize: 10.0)),
                          Text('ON', style: TextStyle(fontSize: 10.0)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          equation,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      Text(result, style: TextStyle(fontSize: 20.0)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 12.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: LogicButton(
                    btnColor: ColorGuide.tertiaryBtn,
                    btnVal: 'DEG',
                    buttonPress: btnOnClick,
                  ),
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'CLS',
                  buttonPress: btnOnClick,
                ),
                Spacer(
                  flex: 1,
                ),
                LogicButton(
                  btnColor: ColorGuide.tertiaryBtn,
                  btnVal: 'ON',
                  buttonPress: btnOnClick,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 12.0,
              left: 10.0,
              right: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'n!',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: '√',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: '(',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: ')',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'x^y',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: '∛',
                  buttonPress: btnOnClick,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 12.0,
              left: 10.0,
              right: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'log',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'x²',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'hyp',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'sin',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'cos',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'tan',
                  buttonPress: btnOnClick,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 16.0,
              left: 10.0,
              right: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'Ran',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'In',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'MS',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'MC',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'M-',
                  buttonPress: btnOnClick,
                ),
                LogicButton(
                  btnColor: ColorGuide.secondaryBtn,
                  btnVal: 'M+',
                  buttonPress: btnOnClick,
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
                  btnVal: '7',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '8',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '9',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.tertiaryBtn,
                  btnVal: 'DEL',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.tertiaryBtn,
                  btnVal: 'AC',
                  buttonPress: btnOnClick,
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
                  btnVal: '4',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '5',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '6',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'x',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '÷',
                  buttonPress: btnOnClick,
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
                  btnVal: '1',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '2',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '3',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '+',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '-',
                  buttonPress: btnOnClick,
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
                  btnVal: '0',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '.',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'Exp',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: 'Ans',
                  buttonPress: btnOnClick,
                ),
                CalculatorButton(
                  btnColor: ColorGuide.primaryBtn,
                  btnVal: '=',
                  buttonPress: btnOnClick,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
