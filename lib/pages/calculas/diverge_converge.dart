import 'package:flutter_color/flutter_color.dart';
import '../../Functions/data_of_fact.dart';
import '../../widget/number_button.dart';
import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import '../../Functions/algorithm_of_div_con.dart';

class ConvegeAndDiverge extends StatefulWidget {
  const ConvegeAndDiverge({super.key});

  @override
  State<ConvegeAndDiverge> createState() => _ConvegeAndDivergeState();
}

// var controller = TextEditingController();
bool getRich = false;
String label = "2/n";
String result = "";

class _ConvegeAndDivergeState extends State<ConvegeAndDiverge> {
  double widthSize = 20;
  double heightSize = 15;
  double sizeFont = 40;

  Color labelColor() {
    if (result.contains("!") && result.contains(",")) {
      return HexColor("F8485E");
    } else {
      return Colors.white;
    }
  }

  FactData factData = FactData();
  bool getrich2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kbackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: knavbarColor,
              child: const Center(
                child: Text(
                  "Simple Solver ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: Container(
                width: 575,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: knavbarColor,
                ),
                child: Center(
                  child: Text(label,
                      style: TextStyle(color: ktextColor, fontSize: sizeFont),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(width: widthSize),
                      Container(
                        width: 337,
                        height: 90,
                        decoration: BoxDecoration(
                          // ignore: prefer_const_constructors
                          // borderRadius: BorderRadius.horizontal(
                          //   right: const Radius.circular(8),
                          // ),
                          borderRadius: BorderRadius.circular(8),

                          color: knavbarColor,
                        ),
                        child: Center(
                          child: Text(
                            result,
                            style: TextStyle(
                                color: labelColor(),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 22),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            getRich = true;
                            getrich2 = true;
                            sizeFont = 30;
                            label = factData.data();
                            result = "Did You Know!";
                          });
                        },
                        child: Container(
                          width: 200 + widthSize,
                          height: 70,
                          decoration: BoxDecoration(
                            color: HexColor("7858A6"),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              "Math Fact!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: heightSize),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NumButton("n", () {
                        setState(() {
                          label += "n";
                        });
                      }, kcolorFunction),
                      SizedBox(
                        width: widthSize,
                      ),
                      NumButton("(", () {
                        setState(() {
                          label += "(";
                        });
                      }, kcolorFunction),
                      SizedBox(
                        width: widthSize,
                      ),
                      NumButton(")", () {
                        setState(() {
                          label += ")";
                        });
                      }, kcolorFunction),
                      SizedBox(
                        width: widthSize,
                      ),
                      NumButton("Del", () {
                        setState(() {
                          if (label.isNotEmpty) {
                            label = label.substring(0, label.length - 1);
                            result = "";
                          }
                        });
                      }, kcolorFunction),
                      SizedBox(
                        width: widthSize,
                      ),
                      NumButton("Clear", () {
                        setState(() {
                          if (label.isNotEmpty) {
                            label = "";
                            result = "";
                          }
                        });
                      }, const Color.fromARGB(255, 253, 90, 90)),
                    ],
                  ),
                  SizedBox(height: heightSize),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // RoundButton(FontAwesomeIcons.plus, et),
                      NumButton("1", () {
                        setState(() {
                          label += "1";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),
                      NumButton("2", () {
                        setState(() {
                          label += "2";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),

                      NumButton("3", () {
                        setState(() {
                          label += "3";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),

                      NumButton("+", () {
                        setState(() {
                          label += "+";
                        });
                      }, kcolorFunction),
                      SizedBox(width: widthSize),

                      NumButton("-", () {
                        setState(() {
                          label += "-";
                        });
                      }, kcolorFunction),
                    ],
                  ),
                  SizedBox(height: heightSize),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // RoundButton(FontAwesomeIcons.plus, et),
                      NumButton("4", () {
                        setState(() {
                          label += "4";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),
                      NumButton("5", () {
                        setState(() {
                          label += "5";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),

                      NumButton("6", () {
                        setState(() {
                          label += "6";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),

                      NumButton("*", () {
                        setState(() {
                          label += "*";
                        });
                      }, kcolorFunction),
                      SizedBox(width: widthSize),

                      NumButton("/", () {
                        setState(() {
                          label += "/";
                        });
                      }, kcolorFunction),
                    ],
                  ),
                  SizedBox(height: heightSize),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // RoundButton(FontAwesomeIcons.plus, et),
                      NumButton("7", () {
                        setState(() {
                          label += "7";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),
                      NumButton("8", () {
                        setState(() {
                          label += "8";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),

                      NumButton("9", () {
                        setState(() {
                          label += "9";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),

                      NumButton(".", () {
                        setState(() {
                          label += ".";
                        });
                      }, kcolorFunction),
                      SizedBox(width: widthSize),

                      NumButton("%", () {
                        setState(() {
                          label += "%";
                        });
                      }, kcolorFunction),
                    ],
                  ),
                  SizedBox(height: heightSize),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 137),
                      NumButton("0", () {
                        setState(() {
                          label += "0";
                        });
                      }, knavbarColor),
                      const SizedBox(width: 140),
                      GestureDetector(
                        onTap: () {
                          ConDivSolver conDivSolver = ConDivSolver(label);
                          setState(() {
                            if (!getrich2 && label.isNotEmpty) {
                              result = conDivSolver.reslut();
                            } else {
                              getrich2 = false;
                            }
                          });
                        },
                        child: Container(
                          width: 200 + widthSize,
                          height: 70,
                          decoration: BoxDecoration(
                            color: HexColor("7858A6"),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              "=",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
