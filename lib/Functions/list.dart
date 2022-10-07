import '../widget/gridview.dart';

class ListOfMatrix {
  ListOfMatrix(this.row, this.col, this.page);
  int row;
  int col;
  String page;

  List<String> list = [];
  void listConverter() {
    if (page == "A") {
      for (int i = 0; i < dynamicTextFiledA.length; i++) {
        String item = dynamicTextFiledA[i].controller.text;
        list.add(item);
      }
    } else {
      for (int i = 0; i < dynamicTextFiledB.length; i++) {
        String item = dynamicTextFiledB[i].controller.text;
        list.add(item);
      }
    }
  }

  List<List<dynamic>> totalList() {
    listConverter();
    List<dynamic> listInt;
    try {
      listInt = list.map(int.parse).toList();
    } catch (e) {
      return [];
    }

    if (row == 1 && col == 1) {
      return [
        [listInt[0]]
      ];
    } else if (row == 2 && col == 1) {
      return [
        [listInt[0]],
        [listInt[1]]
      ];
    } else if (row == 3 && col == 1) {
      return [
        [listInt[0]],
        [listInt[1]],
        [listInt[2]]
      ];
    } else if (row == 4 && col == 1) {
      return [
        [listInt[0]],
        [listInt[1]],
        [listInt[2]],
        [listInt[3]]
      ];
    } else if (row == 1 && col == 2) {
      return [
        [listInt[0], listInt[1]]
      ];
    } else if (row == 2 && col == 2) {
      return [
        [listInt[0], listInt[1]],
        [listInt[2], listInt[3]],
      ];
    } else if (row == 3 && col == 2) {
      return [
        [listInt[0], listInt[1]],
        [listInt[2], listInt[3]],
        [listInt[4], listInt[5]],
      ];
    } else if (row == 4 && col == 2) {
      return [
        [listInt[0], listInt[1]],
        [listInt[2], listInt[3]],
        [listInt[4], listInt[5]],
        [listInt[6], listInt[7]],
      ];
    } else if (row == 1 && col == 3) {
      return [
        [listInt[0], listInt[1], listInt[2]],
      ];
    } else if (row == 2 && col == 3) {
      return [
        [listInt[0], listInt[1], listInt[2]],
        [listInt[3], listInt[4], listInt[5]],
      ];
    } else if (row == 3 && col == 3) {
      return [
        [listInt[0], listInt[1], listInt[2]],
        [listInt[3], listInt[4], listInt[5]],
        [listInt[6], listInt[7], listInt[8]],
      ];
    } else if (row == 4 && col == 3) {
      return [
        [listInt[0], listInt[1], listInt[2]],
        [listInt[3], listInt[4], listInt[5]],
        [listInt[6], listInt[7], listInt[8]],
        [listInt[9], listInt[10], listInt[11]],
      ];
    } else if (row == 1 && col == 4) {
      return [
        [listInt[0], listInt[1], listInt[2], listInt[3]],
      ];
    } else if (row == 2 && col == 4) {
      return [
        [listInt[0], listInt[1], listInt[2], listInt[3]],
        [listInt[4], listInt[5], listInt[6], listInt[7]],
      ];
    } else if (row == 3 && col == 4) {
      return [
        [listInt[0], listInt[1], listInt[2], listInt[3]],
        [listInt[4], listInt[5], listInt[6], listInt[7]],
        [listInt[8], listInt[9], listInt[10], listInt[11]],
      ];
    } else if (row == 4 && col == 4) {
      return [
        [listInt[0], listInt[1], listInt[2], listInt[3]],
        [listInt[4], listInt[5], listInt[6], listInt[7]],
        [listInt[8], listInt[9], listInt[10], listInt[11]],
        [listInt[12], listInt[13], listInt[14], listInt[15]],
      ];
    } else {
      return [
        [999999999999999]
      ];
    }
  }
}
