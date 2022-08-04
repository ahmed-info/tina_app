// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
import 'package:tina/view/screens/product/Products.dart';
import 'package:get/get.dart';
class Favorite extends StatelessWidget {
  //const FavoratesScreen({Key key}) : super(key: key);
  final List<CustomProductItem> favProducts;
  Favorite(this.favProducts);
  @override
  Widget build(BuildContext context) {
    if (favProducts.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('You dont have any favorite products'.tr),
        ),
      );
    } else {
      return Scaffold(
        body: ListView.builder(
          itemCount: favProducts.length,
          itemBuilder: (ctx, index) {
            return Container(
              margin: EdgeInsets.only(top: 16, left: 8, right: 8),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
              child: CustomProductItem(
                productName: favProducts[index].productName,
                productImg: favProducts[index].productImg,
                productPrice: favProducts[index].productPrice,
              ),
            );
          },
        ),
      );
    }
  }
}
