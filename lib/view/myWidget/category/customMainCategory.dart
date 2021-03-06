// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_color.dart';

class CustomMainCategory extends StatefulWidget {
  final String imgUrl;
  final String categoryName;
  const CustomMainCategory({
    Key? key,
    required this.imgUrl,
    required this.categoryName,
  }) : super(key: key);

  @override
  State<CustomMainCategory> createState() => _CustomMainCategoryState();
}

class _CustomMainCategoryState extends State<CustomMainCategory> {
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
            widget.imgUrl,
          ),
        ),
      ),
      child: Text(widget.categoryName, style: Theme.of(context).textTheme.headline3),
    );
  }
}
