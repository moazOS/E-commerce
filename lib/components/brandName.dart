import 'package:flutter/material.dart';

class BrandName extends StatefulWidget {
  BrandName({super.key, required this.title});

  String title;

  @override
  State<BrandName> createState() => _BrandNameState();
}

class _BrandNameState extends State<BrandName> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: () {
          setState(() {
            check = !check;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  fontWeight:
                      check == false ? FontWeight.w400 : FontWeight.w600,
                  fontSize: 17,
                  color: check == false ? Colors.black : Colors.red),
            ),
            Icon(
              check == false ? Icons.check_box_outline_blank : Icons.check_box,
              size: 30,
              color: check == false ? Colors.black26 : Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
