// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class BuildButton extends StatefulWidget {
  final IconData icon;
  final void Function() onPressed;
  const BuildButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<BuildButton> createState() => _BuildButtonState();
}

class _BuildButtonState extends State<BuildButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 32,
      //child: Icon(widget.iconsss),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          elevation: 10,
          minimumSize: Size(100, 50),
          padding: EdgeInsets.zero,
          // backgroundColor: Colors.grey.shade300,
          backgroundColor: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: widget.onPressed,
        child: Icon(widget.icon),
      ),
    );
  }
}
