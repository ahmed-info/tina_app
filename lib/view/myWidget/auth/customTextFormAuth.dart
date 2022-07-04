// ignore_for_file: prefer_const_constructors, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String icontext;
  final IconData iconData;
  final TextEditingController? myController;
  final bool? obscureText;
  CustomTextFormAuth(
      {Key? key,
      required this.hinttext,
      required this.icontext,
      required this.iconData,
      required this.myController,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: obscureText!,
        controller: myController,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
              margin: EdgeInsets.symmetric(horizontal: 9),
              child: Text(icontext)),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
