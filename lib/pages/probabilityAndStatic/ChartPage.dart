import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import 'package:matrix/pages/probabilityAndStatic/static.dart';

import 'bar_chart_model.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPage();
}

class _ChartPage extends State<ChartPage> {
  List<BarChartModel> data = [
    // BarChartModel(
    //   year: "2014",
    //   financial: 250,
    //   color: charts.ColorUtil.fromDartColor(Colors.blueGrey),
    // ),
    // BarChartModel(
    //   year: "2015",
    //   financial: 300,
    //   color: charts.ColorUtil.fromDartColor(Colors.red),
    // ),
  ];
  List<Color> colordata = [
    Colors.deepPurple,
    Colors.blueAccent,
    Colors.amber,
    Colors.deepPurpleAccent,
    Colors.brown,
    Colors.lightBlue,
    Colors.black87,
    Colors.teal,
    Colors.indigo,
    Colors.cyanAccent,
    Colors.blueGrey,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  void initState() {
    super.initState();
    var ar = array(label);
    int len = ar.length;
    for (int i = 0, j = 0; i < len; i++, j++) {
      if (j >= colordata.length) {
        j = 0;
      }
      data.add(
        BarChartModel(
          year: ar[i].toString(),
          financial: ar[i],
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
        title: const Text("Bar Chart"),
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
