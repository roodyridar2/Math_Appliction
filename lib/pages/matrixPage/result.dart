import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Result(this.list, this.row, {super.key});
  final List<dynamic> list;
  final int row;

  String t = "";
  double height = 0;

  void test() {
    for (int i = 0; i < list.length; i++) {
      t += "${list[i]}\n\n";
      // t += list[i].toString() + "\n\n";

    }
    if (t.contains("[") || t.contains("]") || t.contains(",")) {
      t = t.replaceAll("[", "");
      t = t.replaceAll("]", "");
      t = t.replaceAll(",", ",   ");
    }
    if (row == 1) {
      height = 50;
    } else if (row == 2) {
      height = 100;
    } else if (row == 3) {
      height = 140;
    } else if (row == 4) {
      height = 175;
    }
  }

  @override
  Widget build(BuildContext context) {
    test();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kbackgroundColor,
        body: Column(
          children: [
            Expanded(
              flex: 9,
              child: Column(
                children: [
                  Container(
                    color: knavbarColor,
                    width: double.infinity,
                    height: 75,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Result",
                          style: TextStyle(color: ktextColor, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 4,
                          height: height,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, right: 25, left: 25),
                          child: Text(
                            t,
                            style: TextStyle(color: ktextColor, fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 4,
                          height: height,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 75,
                  color: knavbarColor,
                  child: Center(
                    child: Text(
                      "Back",
                      style: TextStyle(
                        color: ktextColor,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
