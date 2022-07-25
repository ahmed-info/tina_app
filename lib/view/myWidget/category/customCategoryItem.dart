// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/data/model/subCategoryModel.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
//import 'package:tina/data/datasource/static/static.dart';
//import 'package:tina/view/myWidget/category/groupSubCategory.dart';
import 'package:tina/view/screens/product/products.dart';

class CustomCategoryItem extends StatefulWidget {
  final String categoryImgItem;
  final String categoryNameItem;
  final List<CustomProductItem>? listOfProduct;
  // List<List<CustomCategoryItem>>? allSubCategory;
  final int num;
  //final String productName;
  const CustomCategoryItem(
      {Key? key,
      required this.categoryImgItem,
      required this.categoryNameItem,
      required this.num,
      //this.allSubCategory,
      this.listOfProduct
      // required this.productName,
      })
      : super(key: key);

  @override
  State<CustomCategoryItem> createState() => _CustomCategoryItemState();
}

class _CustomCategoryItemState extends State<CustomCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          indexProduct = widget.num;
        });
        Get.toNamed(AappRoute.products,
            arguments: Products(
                productName: SubCategoryModel(imgUrl: "", title: "").title,
                num: widget.num));
      },
      child: Container(
        //padding: EdgeInsets.only(bottom: 150),
        width: 140,
        height: 1900,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          //color: Colors.yellow,
          image: DecorationImage(
            image: AssetImage(widget.categoryImgItem, ),
            fit: BoxFit.cover,
            
          ),
        ),
        child: Text(widget.categoryNameItem,
            style: Theme.of(context).textTheme.headline3),
      ),
    );
  }
}
