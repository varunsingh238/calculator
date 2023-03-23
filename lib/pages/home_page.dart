import 'package:calculator/pages/buttons.dart';
import 'package:calculator/pages/themes.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:calculator/utils/media_query.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected = [false, false];
  var userinput = '';
  var ans = '';
  var ans1 = "helo".text.make();

  theme() {
    Mythemes();
  }

  final List<String> buttons = [
    'AC',
    '±',
    '%',
    '÷',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '.',
    '0',
    '-',
    '=',
    '+',
  ];
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF22252E),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFF22252E),
          body: Column(
            children: [
              Expanded(
                  child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            color: const Color(0xFF202D36),
                            child: ToggleButtons(
                              onPressed: (int index) {
                                setState(() {
                                  for (int i = 0; i < isSelected.length; i++) {
                                    isSelected[i] = i == index;
                                    if (index == 0) {
                                      theme();
                                    }
                                  }
                                });
                              },
                              isSelected: isSelected,
                              children: [
                                Image.asset(
                                  "assets/images/sun.png",
                                  color: Colors.grey,
                                ),
                                Image.asset("assets/images/moon.png"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            5.widthBox,
                            userinput.text.size(30).color(Colors.white).make(),
                          ],
                        ),
                        ClipRRect(
                          child: ans.text
                              .size(40)
                              .fontWeight(FontWeight.w500)
                              .color(Colors.white)
                              .make(),
                        )
                      ],
                    )
                  ],
                ),
              )),
              Container(
                height: displayHeight(context) * 0.60,
                decoration: const BoxDecoration(
                    color: Color(0xFF292D36),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                width: displayWidth(context),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            buttonText: "AC",
                            color: const Color(0xFF5CBFB1),
                            buttonTapped: () {
                              setState(() {
                                userinput = '';
                                ans = '0';
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: "%",
                            color: const  Color(0xFF5CBFB1),
                            buttonTapped: () {
                              if (userinput != '') {
                                setState(() {
                                  userinput += buttons[2];
                                });
                              }
                            },
                          ),
                          CustomButton(
                              buttonText: "DEL",
                              color: const Color(0xFF5CBFB1),
                              buttonTapped: () {
                                setState(() {
                                  if (userinput != "") {
                                    userinput = userinput.substring(
                                        0, userinput.length - 1);
                                  } else {
                                    userinput = '';
                                  }
                                });
                              }),
                          CustomButton(
                            buttonText: "/",
                            color: Colors.redAccent,
                            buttonTapped: () {
                              if (userinput != '') {
                                setState(() {
                                  userinput += buttons[7];
                                });
                              }
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            buttonText: '7',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[4];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '8',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[5];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '9',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[6];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: 'x',
                            color: Colors.redAccent,
                            buttonTapped: () {
                              if (userinput != '' &&
                                  userinput != '/' &&
                                  userinput != "-" &&
                                  userinput != '+' &&
                                  userinput != 'x' &&
                                  userinput != '.' &&
                                  userinput != '%' &&
                                  userinput != '±') {
                                setState(() {
                                  userinput += buttons[11];
                                });
                              }
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            buttonText: '4',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[8];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '5',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[9];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '6',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[10];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '+',
                            color: Colors.redAccent,
                            buttonTapped: () {
                              if (userinput != '') {
                                setState(() {
                                  userinput += buttons[19];
                                });
                              }
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            buttonText: '1',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[12];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '2',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[13];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '3',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[14];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '-',
                            color: Colors.redAccent,
                            buttonTapped: () {
                              if (userinput != '' &&
                                  userinput != '/' &&
                                  userinput != "-" &&
                                  userinput != '+' &&
                                  userinput != 'x' &&
                                  userinput != '.' &&
                                  userinput != '%' &&
                                  userinput != '±') {
                                setState(() {
                                  userinput += buttons[17];
                                });
                              }
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            buttonText: '.',
                            color: Colors.white,
                            buttonTapped: () {
                              if (userinput != '' &&
                                  userinput != '/' &&
                                  userinput != "-" &&
                                  userinput != '+' &&
                                  userinput != 'x' &&
                                  userinput != '.' &&
                                  userinput != '%' &&
                                  userinput != '±') {
                                setState(() {
                                  userinput += buttons[15];
                                });
                              }
                            },
                          ),
                          CustomButton(
                            buttonText: '0',
                            color: Colors.white,
                            buttonTapped: () {
                              setState(() {
                                userinput += buttons[16];
                              });
                            },
                          ),
                          CustomButton(
                            buttonText: '-',
                            color: Colors.redAccent,
                            buttonTapped: () {
                              // ignore: curly_braces_in_flow_control_structures
                              if (userinput != '') {
                                setState(() {
                                  userinput += buttons[17];
                                });
                              } else {
                                return null;
                              }
                            },
                          ),
                          CustomButton(
                            buttonText: '=',
                            color: Colors.redAccent,
                            buttonTapped: () {
                              if (userinput != '') {
                                setState(() {
                                  equalPressed();
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userinput;
    finaluserinput = userinput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    ans = eval.toString();
  }
}
