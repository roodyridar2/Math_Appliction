import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:matrix/constants.dart';

import '../../widget/static_widget.dart';

class MoresStatic extends StatelessWidget {
  MoresStatic(this.min, this.max, this.range, this.median, this.mean, this.sum,
      this.standardDev, this.q1s, this.q3s, this.iqr, this.outlier,
      {super.key});
  String max = "";
  String min = "";
  String range = "";
  String median = "";
  String sum = "";
  String standardDev = "";
  String mean = "";
  String q1s = "";
  String q3s = "";
  String outlier = "";
  String iqr = "";

  // String mod = "";
  double boxHeight = 20;
  double boxWidth = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kbackgroundColor,
        appBar: null,
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: knavbarColor,
                    child: const Center(
                      child: Text(
                        "Result",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: boxHeight),
                  Row(
                    children: [
                      ResultStatic("Min", min),
                      SizedBox(width: boxWidth),
                      ResultStatic("max", max),
                    ],
                  ),
                  SizedBox(height: boxHeight),
                  Row(
                    children: [
                      ResultStatic("Range", range),
                      SizedBox(width: boxWidth),
                      ResultStatic("Sum", sum),
                    ],
                  ),
                  SizedBox(height: boxHeight),
                  Row(
                    children: [
                      ResultStatic("Meadian", median),
                      SizedBox(width: boxWidth),
                      ResultStatic("Mean", mean),
                    ],
                  ),
                  SizedBox(height: boxHeight),
                  Row(
                    children: [
                      ResultStatic("Q1", q1s),
                      SizedBox(width: boxWidth),
                      ResultStatic("Q3", q3s),
                    ],
                  ),
                  SizedBox(height: boxHeight),
                  Row(
                    children: [
                      ResultStatic("Std", standardDev),
                      SizedBox(width: boxWidth),
                      ResultStatic("IQR", iqr),
                    ],
                  ),
                  SizedBox(height: boxHeight),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: knavbarColor,
                        ),
                        child: const Center(
                          child: Text(
                            "Outlier",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 350,
                        height: 40,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            outlier,
                            style: const TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: double.infinity,
                  height: 75,
                  color: knavbarColor,
                  child: const Center(
                    child: Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
