import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import 'package:matrix/main.dart';
import '../../widget/gridview.dart';
import '../../widget/button_card.dart';
import '../../widget/text_field_card.dart';

class MatrixA extends StatefulWidget {
  const MatrixA({super.key});

  @override
  State<MatrixA> createState() => _MyPageState();
}

int numColumn = 1;
int numRow = 1;

class _MyPageState extends State<MatrixA> {
  void addColumn() {
    setState(
      () {
        if (numRow < 4) {
          numRow++;
          if (numColumn == 1) {
            dynamicTextFiledA.add(TextFieldWidget());
          } else if (numColumn == 2) {
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
          } else if (numColumn == 3) {
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
          } else if (numColumn == 4) {
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
          }
        }
      },
    );
  }

  void minColumn() {
    setState(
      () {
        if (numRow > 1) {
          numRow--;
          if (numColumn == 1) {
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledA.removeLast();
          } else if (numColumn == 2) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
          } else if (numColumn == 3) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
          } else if (numColumn == 4) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
          }
        }
      },
    );
  }

  void addrow() {
    setState(
      () {
        if (numColumn < 4) {
          numColumn++;
          if (numRow == 1) {
            dynamicTextFiledA.add(TextFieldWidget());
          } else if (numRow == 2) {
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
          } else if (numRow == 3) {
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
          } else if (numRow == 4) {
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
            dynamicTextFiledA.add(TextFieldWidget());
          }
        }
      },
    );
  }

  void minRow() {
    setState(
      () {
        if (numColumn > 1) {
          numColumn--;
          if (numRow == 1) {
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledA.removeLast();
          } else if (numRow == 2) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
          } else if (numRow == 3) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
          } else if (numRow == 4) {
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            // dynamicTextFiled.removeAt(0);
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
            dynamicTextFiledA.removeLast();
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
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ButtonCard("Row", numColumn, addrow, minRow),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ButtonCard("column", numRow, addColumn, minColumn),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Expanded(
            flex: 4,
            child: MasonryLayout(numRow, numColumn, "A"),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: knavbarColor,
              child: TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  for (int i = 0; i < dynamicTextFiledA.length; i++) {
                    dynamicTextFiledA[i].controller.clear();
                  }
                  for (int i = 0; i < dynamicTextFiledB.length; i++) {
                    dynamicTextFiledB[i].controller.clear();
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 30, color: ktextColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
