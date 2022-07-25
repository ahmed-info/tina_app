// ignore_for_file: prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/category/customMainCategory.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatefulWidget {
  static const String screenRoute = '/category-details';
  final value;
  final index;
  CategoryDetails({Key? key, this.value, this.index}) : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

int? myi = 0;
int? gooo = 0;
int indexpage = 0;

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<CustomProductItem> productList;

    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: AppColor.primaryColor,
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Center(child: Text(Get.arguments['value'])),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        //'assets/images/category${Get.arguments['index']}.png',
                        'assets/images/category1.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
