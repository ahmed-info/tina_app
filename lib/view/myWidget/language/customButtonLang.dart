// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_color.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final Function()? onPressed;
  CustomButtonLang({Key? key, required this.textButton, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        textColor: Colors.white,
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(textButton,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
