import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              SingleChildScrollView(
                child: Container(
                  height: 650,
                  width: 100,
                  color: Color(0XFF16a085),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [],
                  ),
                ),
              ),
              Column(
                children: [],
              )
            ],
          )
        ],
      ),
    );
  }
}
