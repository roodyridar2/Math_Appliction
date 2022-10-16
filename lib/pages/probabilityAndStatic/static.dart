import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matrix/pages/probabilityAndStatic/ChartPage.dart';
import 'package:matrix/pages/probabilityAndStatic/more_static.dart';
import '../../widget/number_button.dart';
import 'package:matrix/constants.dart';
import 'package:flutter_color/flutter_color.dart';
import '../../widget/static_widget.dart';
import 'package:statistics/statistics.dart';

class StaticAndProbability extends StatefulWidget {
  const StaticAndProbability({super.key});

  @override
  State<StaticAndProbability> createState() => _StaticAndProbabilityState();
}

String label = "";
String result = "";

List<double> array(String label) {
  if (label.replaceAll(",", "").isEmpty ||
      label.replaceAll(".", "").isEmpty ||
      label.isEmpty) {
    return [0];
  }

  if (label[label.length - 1] == ",") {
    label = label.substring(0, label.length - 1);
  }

  var ar = label.split(',');

  List<double> arrayLable = [ar.length.toDouble()];
  for (int i = 0; i < ar.length; i++) {
    arrayLable.add(ar[i].toDouble());
  }
  arrayLable.removeAt(0);
  return arrayLable;
}

class _StaticAndProbabilityState extends State<StaticAndProbability> {
  double widthSize = 25;
  double heightSize = 17;
  String max = "";
  String min = "";
  String range = "";
  String mod = "";
  String median = "";
  String sum = "";
  String standardDev = "";
  String mean = "";

  void algorithOFstatic() {
    var arrayLable = array(label);
    var statistics = arrayLable.statistics;

    max = (statistics.max).toString();
    min = (statistics.min).toString();
    range = (statistics.max - statistics.min).toStringAsFixed(1);
    median = (arrayLable.median).toString();
    standardDev = std(array(label)).substring(0, std(array(label)).length - 1);
    mean = (statistics.mean).toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kbackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: double.infinity,
            //   height: 50,
            //   color: knavbarColor,
            //   child: const Center(
            //     child: Text(
            //       "Simple Solver ",
            //       style: TextStyle(color: Colors.white, fontSize: 20),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: Container(
                width: 600,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: knavbarColor,
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(color: ktextColor, fontSize: 35),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 55),
                      ResultStatic("Min", min),
                      const SizedBox(width: 10),
                      ResultStatic("max", max),
                      const SizedBox(width: 10),
                      ResultStatic("Range", range),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const SizedBox(width: 55),

                      // ResultStatic("Mean", mean),
                      // const SizedBox(width: 10),
                      // ResultStatic("Median", median),
                      // const SizedBox(width: 10),
                      // ResultStatic("STD", standardDev),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MoresStatic(max, min, range),
                            ),
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: knavbarColor,
                          ),
                          child: const Center(
                            child: Text(
                              "More",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 35),
                      // ResultStatic(),
                      // SizedBox(
                      //   width: 15
                      // ),
                      // ResultStatic(),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            algorithOFstatic();
                          });
                        },
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: BoxDecoration(
                            color: HexColor("7858A6"),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              "Calculate",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChartPage()),
                          );
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: heightSize,
                  ),
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
                      NumButton(",", () {
                        setState(() {
                          label += ",";
                        });
                      }, knavbarColor),
                    ],
                  ),
                  SizedBox(height: heightSize),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumButton("", () {
                        setState(() {
                          label += "";
                        });
                      }, kbackgroundColor),
                      SizedBox(width: widthSize),
                      NumButton("0", () {
                        setState(() {
                          label += "0";
                        });
                      }, knavbarColor),
                      SizedBox(width: widthSize),
                      NumButton("", () {
                        setState(() {
                          label += "";
                        });
                      }, kbackgroundColor),
                      SizedBox(width: widthSize),
                      NumButton(".", () {
                        setState(() {
                          label += ".";
                        });
                      }, knavbarColor),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

String std(List<double> data) {
  double total = 0;
  for (int i = 0; i < data.length; i++) {
    total += data[i];
  }
  double mean = total / data.length;
  double xiMeanP2 = 0;

  for (int i = 0; i < data.length; i++) {
    xiMeanP2 += pow((mean - data[i]), 2);
  }

  double std = sqrt(xiMeanP2 / (data.length - 1));
  String result = std.toStringAsFixed(2);
  return result;
}
