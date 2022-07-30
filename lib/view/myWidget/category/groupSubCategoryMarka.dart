// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
//import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';

class GroupSubCategoryMarka extends StatefulWidget {
  final List<CustomCategoryItem> listOfSubCategory;
  final List<CustomProductItem>? listOfProduct;

  //final int indexint;
  const GroupSubCategoryMarka(
      {Key? key, required this.listOfSubCategory, this.listOfProduct})
      : super(key: key);

  @override
  State<GroupSubCategoryMarka> createState() => _GroupSubCategoryMarkaState();
}

class _GroupSubCategoryMarkaState extends State<GroupSubCategoryMarka> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200,
      width: 200,
      //margin: EdgeInsets.all(25),
      //padding: EdgeInsets.only(bottom: 25),
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: Colors.red,
          width: 200,
          height: 900,
          child: GridView(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              //mainAxisExtent: 200,
              childAspectRatio: 7 / 8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: widget.listOfSubCategory
                .map((e) => CustomCategoryItem(
                      num: e.num,
                      categoryImgItem: e.categoryImgItem,
                      categoryNameItem: e.categoryNameItem,
                    ))
                .toList(),
          ),
        ),
      )),
    );
  }
}
