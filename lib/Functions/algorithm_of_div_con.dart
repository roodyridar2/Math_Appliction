import 'package:math_expressions/math_expressions.dart';

class ConDivSolver {
  ConDivSolver(this.input);
  String input;
  double x = 0;
  bool flag = true;
  double firstConvergeNum = 0;
  String reslut() {
    String result = "Null";

    Parser p = Parser();
    for (int n = 1; n < 100001; n++) {
      String data = input.replaceAll("n", "$n");
      // print("---------");
      // print(data);
      // print("---------");
      String result;
      try {
        Expression exp = p.parse(data);
        // print(exp);
        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        if (result.toString() == "Infinity") {
          return "Infinity";
        }
      } catch (e) {
        return "This is Wrong\n Look a up, LOOK!";
      }
      // print(result);

      x = double.parse(result);
      if (n >= 5000) {
        if (x.floor() > firstConvergeNum.floor()) {
          result = "Diverges to infinity";
          return result;
        }
        if (x.floor() < firstConvergeNum.floor()) {
          result = "Diverges to minus infinity";
          return result;
        }
      }

      // if (x > 1000) {
      //   result = "Diverges to infinity";
      //   return result;
      // }

      // if (x < -1000) {
      //   result = "Diverges to minus infinity";
      //   return result;
      // }

      if (flag) {
        firstConvergeNum = x;
        if (n == 1000) {
          flag = false;
        }
      }

      // print(num1W == num2W);
      if ((n >= 5000) && (x.floor() == firstConvergeNum.floor())) {
        // print("$x why");
        if (x >= firstConvergeNum) {
          int t = x.ceil();

          result = "converge to $t";
          return result;
        } else {
          // print("$x floor");
          int t = x.floor();
          result = "converge to $t";
          return result;
        }
      }
    }

    return result;
  }
}
