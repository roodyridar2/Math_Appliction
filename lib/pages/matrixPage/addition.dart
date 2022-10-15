import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import 'page_matrix_a.dart';
import 'page_matrix_b.dart';

class Adition extends StatefulWidget {
  const Adition({super.key});

  @override
  State<Adition> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Adition> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: kbackgroundColor,
          appBar: AppBar(
            title: Text(
              "MATRIX",
              style: TextStyle(color: ktextColor),
            ),
            // elevation: 0,
            backgroundColor: knavbarColor,
            bottom: TabBar(
              indicatorColor: ktextColor,
              tabs: const [
                Tab(
                  text: "Matrix A",
                ),
                Tab(
                  text: "Matrix B",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const MatrixA(),
              MatrixB("Addition", kadition),
            ],
          ),
        ),
      ),
    );
  }
}
