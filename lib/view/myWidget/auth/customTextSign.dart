// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/constant/app_route.dart';

class CustomTextSign extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final void Function() onTap;
  const CustomTextSign(
      {Key? key,
      required this.textOne,
      required this.textTwo,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne),
        InkWell(
          onTap: onTap,
          child: Text(textTwo,
              style: TextStyle(
                  color: AppColor.secondaryColor, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
