import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import 'package:matrix/pages/probabilityAndStatic/static.dart';
import 'package:statistics/statistics.dart';

// import 'bar_chart_model.dart'
import '../probabilityAndStatic/bar_chart_model.dart';

class ChartBouncingBall extends StatefulWidget {
  ChartBouncingBall(this.aNum, {Key? key}) : super(key: key);
  double aNum;

  @override
  State<ChartBouncingBall> createState() => _TestPage(aNum);
}

class _TestPage extends State<ChartBouncingBall> {
  _TestPage(this.aNum);
  double aNum;
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
    double a = aNum;
    bouncingballData.add(a);
    while (true) {
      a = a * (3 / 4);
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
