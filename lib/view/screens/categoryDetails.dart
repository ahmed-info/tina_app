// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';

class CategoryDetails extends StatefulWidget {
  static const String screenRoute = '/category-details';
  final value;
  final index;
  CategoryDetails({Key? key, this.value, this.index}) : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: AppColor.primaryColor,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(widget.value)),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/category${widget.index}.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
