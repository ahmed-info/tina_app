// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:tina/view/myWidget/product/customProductItem.dart';

class GroupProduct extends StatelessWidget {
  final List<CustomProductItem> listOfProduct;
  const GroupProduct({
    Key? key,
    required this.listOfProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
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
