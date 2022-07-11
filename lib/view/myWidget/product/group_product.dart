// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:tina/view/myWidget/product/custom_product_item.dart';

class GroupProduct extends StatelessWidget {
  final List<CustomProductItem> listOfProduct;
  const GroupProduct({
    Key? key,
    required this.listOfProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        height: 650,
        child: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          //maxCrossAxisExtent: 200,
          //childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          //padding: EdgeInsets.all(10),
          children: listOfProduct
              .map((e) => CustomProductItem(
                    num: e.num,
                    productName: e.productName,
                    productImg: e.productImg,
                    price: e.price,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
