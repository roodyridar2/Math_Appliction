import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import 'package:statistics/statistics.dart';

// import 'bar_chart_model.dart'
import '../probabilityAndStatic/bar_chart_model.dart';

class ChartBouncingBall extends StatefulWidget {
  const ChartBouncingBall(this.aNum, this.upR, this.downR, {Key? key})
      : super(key: key);
  final double aNum;
  final double upR;
  final double downR;

  @override
  State<ChartBouncingBall> createState() => _TestPage(aNum, upR, downR);
}

class _TestPage extends State<ChartBouncingBall> {
  _TestPage(this.aNum, this.upR, this.downR);
  double aNum;
  double upR;
  double downR;
  List<BarChartModel> data = [
    // BarChartModel(
    //   year: "2014",
    //   financial: 250,
    //   color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    // ),
  ];
  List<Color> colordata = [
    Colors.deepPurple,
    Colors.blueAccent,
    Colors.amber,
    Colors.brown,
    Colors.redAccent,
    Colors.black87,
    Colors.teal,
    Colors.deepPurpleAccent,
    Colors.indigo,
    Colors.pink,
    Colors.cyanAccent,
    Colors.blueGrey,
    Colors.lightBlue,
  ];

  @override
  void initState() {
    super.initState();

    List<double> bouncingballData = [];

    int count = 0;
    double a = aNum;
    String space = "";

    if (upR != downR) {
      bouncingballData.add(a);
      while (true) {
        a = a * (upR / downR);
        bouncingballData.add(a.toStringAsFixed(2).toDouble());
        if (a < 1) {
          break;
        }
      }
      for (int i = 0, j = 0; i < bouncingballData.length; i++, j++) {
        if (j >= colordata.length) {
          j = 0;
        }
        data.add(
          BarChartModel(
            year: bouncingballData[i].toString(),
            financial: (bouncingballData[i]),
            color: charts.ColorUtil.fromDartColor(colordata[j]),
          ),
        );
      }
    } else {
      for (int i = 0; i < 25; i++) {
        count++;
        a *= (upR / downR);
        bouncingballData.add(a.toStringAsFixed(2).toDouble());
        if (count >= 25) {
          break;
        }
      }

      for (int i = 0, j = 0; i < bouncingballData.length; i++, j++) {
        if (j >= colordata.length) {
          j = 0;
        }
        space += " ";

        data.add(
          BarChartModel(
            year: space,
            financial: (bouncingballData[i]),
            color: charts.ColorUtil.fromDartColor(colordata[j]),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Visualize Number"),
        centerTitle: true,
        backgroundColor: kbackgroundColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: charts.BarChart(
          series,
          animate: true,
        ),
      ),
    );
  }
}
