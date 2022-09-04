// ignore_for_file: must_be_immutable, file_names, prefer_const_constructors

import 'package:flutter/material.dart'
    show
        BuildContext,
        Color,
        EdgeInsets,
        FontWeight,
        Key,
        MainAxisAlignment,
        Padding,
        Row,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Widget;

class BigText extends StatelessWidget {
  final String text;
  double size;
  BigText({
    Key? key,
    required this.text,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 10, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
              color: Color(0xff025c1f),
              //color: Color(0xff16a085),
            ),
          ),
        ],
      ),
    );
  }
}
