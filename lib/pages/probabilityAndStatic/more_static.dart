import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:matrix/constants.dart';

import '../../widget/static_widget.dart';

class MoresStatic extends StatelessWidget {
  MoresStatic(this.min, this.max, this.range);
  String max = "";
  String min = "";
  String range = "";
  String mod = "";
  String median = "";
  String sum = "";
  String standardDev = "";
  String mean = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kbackgroundColor,
        appBar: null,
        body: Column(
          children: [
            const SizedBox(height: 55),
            ResultStatic("Min", min),
            const SizedBox(width: 10),
            ResultStatic("max", max),
            const SizedBox(width: 10),
            ResultStatic("Range", range),
          ],
        ),
      ),
    );
  }
}
