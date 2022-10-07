import 'package:flutter/material.dart';
import '../widget/gridview.dart';
import '../widget/button_card.dart';
import '../widget/text_field_card.dart';
import 'package:matrix2d/matrix2d.dart';
import '../Functions/algorithm.dart';

// import './pageMatrixA.dart';

class MatrixB extends StatefulWidget {
  const MatrixB(this.buttonName, this.typeCal, {super.key});
  final String buttonName;
  final String typeCal;
  @override
  // ignore: no_logic_in_create_state
  State<MatrixB> createState() => _MyPageState(buttonName, typeCal);
}

Matrix2d m2d = const Matrix2d();

int numRow2 = 1;
int numColumn2 = 1;

class _MyPageState extends State<MatrixB> {
  _MyPageState(this.buttonName, this.typeCal);
  String buttonName;
  String typeCal;

  void addColumn() {
    setState(
      () {
        if (numRow2 < 4) {
          numRow2++;
          if (numColumn2 == 1) {
            dynamicTextFiledB.add(TextFieldWidget());
          } else if (numColumn2 == 2) {
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
          } else if (numColumn2 == 3) {
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
          } else if (numColumn2 == 4) {
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
          }
        }
      },
    );
  }

  void minColumn() {
    setState(
      () {
        if (numRow2 > 1) {
          numRow2--;
          if (numColumn2 == 1) {
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledB.removeLast();
          } else if (numColumn2 == 2) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
          } else if (numColumn2 == 3) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
          } else if (numColumn2 == 4) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
          }
        }
      },
    );
  }

  void addrow() {
    setState(
      () {
        if (numColumn2 < 4) {
          numColumn2++;
          if (numRow2 == 1) {
            dynamicTextFiledB.add(TextFieldWidget());
          } else if (numRow2 == 2) {
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
          } else if (numRow2 == 3) {
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
          } else if (numRow2 == 4) {
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
            dynamicTextFiledB.add(TextFieldWidget());
          }
        }
      },
    );
  }

  void minRow() {
    setState(
      () {
        if (numColumn2 > 1) {
          numColumn2--;
          if (numRow2 == 1) {
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledB.removeLast();
          } else if (numRow2 == 2) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledB.removeLast();

            dynamicTextFiledB.removeLast();
          } else if (numRow2 == 3) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
          } else if (numRow2 == 4) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
            dynamicTextFiledB.removeLast();
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          Expanded(
            // flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ButtonCard("Row", numColumn2, addrow, minRow),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ButtonCard("column", numRow2, addColumn, minColumn),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            flex: 4,
            child: MasonryLayout(numRow2, numColumn2, "B"),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: SolverPushButton(buttonName, typeCal)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
