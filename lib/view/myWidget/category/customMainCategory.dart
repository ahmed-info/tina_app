// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';

class CustomMainCategory extends StatelessWidget {
  final String imgUrl;
  final String categoryName;
  const CustomMainCategory({
    Key? key,
    required this.imgUrl,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
            color: AppColor.grey, style: BorderStyle.solid, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          //scale: 0.5,
          fit: BoxFit.contain,
          image: AssetImage(
            imgUrl,
          ),
        ),
      ),
      child: Text(categoryName, style: Theme.of(context).textTheme.headline3),
    );
  }
}
