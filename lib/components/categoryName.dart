import 'package:flutter/material.dart';
import 'package:eco/data.dart';

class CategoryName extends StatefulWidget {
  CategoryName(
      {super.key,
      required this.categories,
      required this.index,
      required this.set});
  List<String> categories;
  int index;
  Function set;
  @override
  State<CategoryName> createState() => _CategoryNameState();
}

class _CategoryNameState extends State<CategoryName> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          categoryPageIndex = 2;
          categoryPageTitle = "Women's ${widget.categories[widget.index]}";
        });
        widget.set;
      },
      child: ListTile(
        contentPadding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
        title: Text(widget.categories[widget.index]),
      ),
    );
  }
}
