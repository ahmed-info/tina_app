// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
//import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';

class GroupSubCategory extends StatefulWidget {
  final List<CustomCategoryItem> listOfSubCategory;
    final List<CustomProductItem>? listOfProduct;

  //final int indexint;
  const GroupSubCategory({Key? key, required this.listOfSubCategory, this.listOfProduct})
      : super(key: key);

  @override
  State<GroupSubCategory> createState() => _GroupSubCategoryState();
}

class _GroupSubCategoryState extends State<GroupSubCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      //margin: EdgeInsets.all(25),
      //padding: EdgeInsets.only(bottom: 25),
      child: SingleChildScrollView(
          child: Container(
        width: 200,
        height: 900,
        child: GridView(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 7 / 8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          children: widget.listOfSubCategory
              .map((e) => CustomCategoryItem(
                    num: e.num,
                    categoryImgItem: e.categoryImgItem,
                    categoryNameItem: e.categoryNameItem,
                  ))
              .toList(),
        ),
      )),
    );
  }
}
