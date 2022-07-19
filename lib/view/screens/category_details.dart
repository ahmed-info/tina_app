// ignore_for_file: prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/category/customMainCategory.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';

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
                Center(child: Text(widget.value)),
                Container(
                  height: 13150,
                  width: size.width - 20,
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
                  child: Column(
                    children: categoryList
                        .asMap()
                        .map((iiii, element) => MapEntry(
                              iiii,
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    myi = iiii;
                                    gooo = iiii;
                                    indexpage = iiii;
                                    //indexProduct =i;
                                  });
                                  // return pageController!.jumpToPage(iiii);
                                  //return pageController. == 0;
                                },
                                child: CustomCategoryItem(
                                  categoryImgItem:
                                      'assets/images/category${iiii + 1}.png',
                                  categoryNameItem: categoryList[iiii],
                                  num: categoryList.length,
                                ),
                              ),
                            ))
                        .values
                        .toList(),
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
