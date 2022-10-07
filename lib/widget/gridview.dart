import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'text_field_card.dart';

List<TextFieldWidget> dynamicTextFiledA = [TextFieldWidget()];
List<TextFieldWidget> dynamicTextFiledB = [TextFieldWidget()];

class MasonryLayout extends StatelessWidget {
  const MasonryLayout(this.row, this.column, this.page, {super.key});
  final int row;
  final int column;
  final String page;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: row),
      itemCount:
          page == "A" ? dynamicTextFiledA.length : dynamicTextFiledB.length,
      crossAxisSpacing: 8,
      mainAxisSpacing: 18,
      itemBuilder: ((context, index) {
        // return dynamicTextFiledA[index];
        return page == "A"
            ? dynamicTextFiledA[index]
            : dynamicTextFiledB[index];
      }),
    );
  }
}
