// ignore_for_file: prefer_const_constructors, file_names, unused_import

import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  final String categoryImgItem;
  final String categoryNameItem;
  const CustomCategoryItem(
      {Key? key, required this.categoryImgItem, required this.categoryNameItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        //padding: EdgeInsets.only(bottom: 150),
        width: 140,
        height: 900,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color: Colors.yellow,
          image: DecorationImage(
              image: AssetImage(categoryImgItem), fit: BoxFit.cover),
        ),
        child: Text(categoryNameItem,
            style: Theme.of(context).textTheme.headline3),
      ),
    );
  }
}
