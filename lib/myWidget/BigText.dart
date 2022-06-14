import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(left: 25, top: 10),
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
