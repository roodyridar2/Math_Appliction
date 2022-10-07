import 'package:flutter/material.dart';
import '../pages/Result/result.dart';
import '../constants.dart';
import '../pages/page_matrixA.dart';
import '../pages/page_matrix_b.dart';
import 'list.dart';

class SolverPushButton extends StatelessWidget {
  const SolverPushButton(this.name, this.cal, {super.key});
  final String name;
  final String cal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ListOfMatrix listOfMatrixA = ListOfMatrix(numColumn, numRow, "A");

        ListOfMatrix listOfMatrixB = ListOfMatrix(numColumn2, numRow2, "B");

        listOfMatrixA.list.clear();
        listOfMatrixB.list.clear();

        if (listOfMatrixA.totalList().isEmpty ||
            listOfMatrixB.totalList().isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kbackgroundColor,
              content: const Text(
                "Fill the blank",
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        } else {
          List<dynamic> r = [];
          if (cal == "addition") {
            if (numRow == numRow2 && numColumn2 == numColumn) {
              r = m2d.addition(
                listOfMatrixA.totalList(),
                listOfMatrixB.totalList(),
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Result(r, numColumn2)),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: kbackgroundColor,
                  content: const Text(
                    "Not much row and column",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              );
            }
          } else if (cal == "subtraction") {
            if (numRow == numRow2 && numColumn2 == numColumn) {
              r = m2d.subtraction(
                listOfMatrixA.totalList(),
                listOfMatrixB.totalList(),
              );

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Result(r, numColumn2)),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: kbackgroundColor,
                  content: const Text(
                    "Not much row and column",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              );
            }
          } else if (cal == "multiply") {
            if (numRow == numColumn2) {
              r = m2d.dot(
                listOfMatrixA.totalList(),
                listOfMatrixB.totalList(),
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Result(r, numColumn2)),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: kbackgroundColor,
                  content: const Text(
                    "Not much row and column",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              );
            }
          } else if (cal == "division") {
            if (numRow == numRow2 && numColumn2 == numColumn) {
              r = m2d.division(
                listOfMatrixA.totalList(),
                listOfMatrixB.totalList(),
              );

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Result(r, numColumn2)),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: kbackgroundColor,
                  content: const Text(
                    "Not much row and column",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              );
            }
          }
        }
      },
      child: Container(
        // width: double.infinity,
        // height: 75,
        color: knavbarColor,
        child: Center(
          child: Text(
            name,
            style: TextStyle(fontSize: 25, color: ktextColor),
          ),
        ),
      ),
    );
  }
}
