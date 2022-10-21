import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matrix/chartbouningball.dart';
import 'package:statistics/statistics.dart';
import '../../widget/number_button.dart';
import 'package:matrix/constants.dart';

TextStyle kgoogleStyle(Color color) {
  var style = GoogleFonts.abel(
      // textStyle: Theme.of(context).textTheme.headline4,
      fontSize: 25,
      fontWeight: FontWeight.w200,
      // fontStyle: FontStyle.normal,
      color: color);
  return style;
}

class BouncingBall extends StatefulWidget {
  const BouncingBall({super.key});

  @override
  State<BouncingBall> createState() => _BouncingBallState();
}

class _BouncingBallState extends State<BouncingBall> {
  String label = "64";
  String result = "";
  double widthSize = 30;
  double heightSize = 24;
  double solver() {
    result =
        (double.parse(label) * ((1 + 2 / 3) / (1 - 2 / 3))).toStringAsFixed(1);

    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kbackgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,

                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(8),
                // ),
                // color: knavbarColor,
                child: Container(
                  color: knavbarColor,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 24, top: 24, bottom: 4),
                        child: Row(
                          children: [
                            Text(
                              "Dropping a ball from a meters above a flat surafce.\nEach time the ball hits the surface it rebounded a distance th,\nwhere r is postive but less than 1.\nFinde the total distance the ball travles up and down IF,",
                              // style: TextStyle(
                              //   color: ktextColor,
                              //   fontSize: 20,
                              // ),

                              style: kgoogleStyle(ktextColor),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              "R = 2/3",
                              style: kgoogleStyle(Colors.tealAccent),
                            ),
                            Text(
                              " And ",
                              style: kgoogleStyle(ktextColor),
                            ),
                            Text(
                              "A = ",
                              style: kgoogleStyle(Colors.yellow),
                            ),
                            Text(
                              label,
                              style: kgoogleStyle(Colors.yellow),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: heightSize),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 360,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: knavbarColor,
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "    result:",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  result,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: widthSize),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ChartBouncingBall(double.parse(label))),
                              );
                            });
                          },
                          child: Container(
                            width: 100,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: knavbarColor,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.chartColumn,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
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
                        NumButton("Del", () {
                          setState(() {
                            if (label.isNotEmpty) {
                              label = label.substring(0, label.length - 1);
                              result = "";
                            }
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
                        NumButton("Ran", () {
                          setState(() {
                            Random r = Random();

                            label = (r.nextInt(200)).toString();
                          });
                        }, knavbarColor),
                      ],
                    ),
                    SizedBox(height: heightSize),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NumButton(".", () {
                          setState(() {
                            label += ".";
                          });
                        }, knavbarColor),
                        SizedBox(width: widthSize),
                        NumButton("0", () {
                          setState(() {
                            label += "0";
                          });
                        }, knavbarColor),
                        SizedBox(width: widthSize),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              solver();
                            });
                          },
                          child: Container(
                            width: 200 + widthSize,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: knavbarColor,
                            ),
                            child: const Center(
                              child: Text(
                                "Claculate",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
