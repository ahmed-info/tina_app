// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';

class GroupProductMarka extends StatelessWidget {
  final List<CustomProductItem> listOfProduct;
  const GroupProductMarka({
    Key? key,
    required this.listOfProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //physics: const NeverScrollableScrollPhysics(),
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          color: Colors.cyan,
          height: 850,
          child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.horizontal,
            //maxCrossAxisExtent: 200,
            //childAspectRatio: 7 / 8,
            //mainAxisSpacing: 10,
            //crossAxisSpacing: 10,
            //padding: EdgeInsets.all(10),
            children: Get.arguments['listOfBrand']
                .map((e) => CustomProductItem(
                      num: e.num,
                      productName: e.productName,
                      productImg: e.productImg,
                      //productPrice: e.productPrice,
                      //description: e.description,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
