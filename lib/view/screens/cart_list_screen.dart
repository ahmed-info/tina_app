// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tina/controller/basket_counter_controller.dart';
import 'package:tina/controller/product_cart_controller.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
import 'package:tina/view/screens/product/Products.dart';
import 'package:get/get.dart';
import 'package:tina/view/screens/product/product_cart.dart';

class CartListScreen extends StatelessWidget {
  //const FavoratesScreen({Key key}) : super(key: key);
  final List<CustomProductItem> basketProducts;
  CartListScreen(this.basketProducts);
  @override
  Widget build(BuildContext context) {
    //BasketCounterControllerImp basketCounterController = Get.find();
    CartController cartController = Get.find();

    if (basketProducts.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('You dont have any favorite products'.tr),
        ),
      );
    } else {
      return Scaffold(
        body: ListView.builder(
          itemCount: basketProducts.length,
          itemBuilder: (ctx, index) {
            return Container(
              margin: EdgeInsets.only(top: 16, left: 8, right: 8),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
              child: CustomProductItem(
                productName: basketProducts[index].productName,
                productImg: basketProducts[index].productImg,
                productPrice: basketProducts[index].productPrice,
                productQty: qtyNum,
              ),
            );
          },
        ),
      );
    }
  }
}
