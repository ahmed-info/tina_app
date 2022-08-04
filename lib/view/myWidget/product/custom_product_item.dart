// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/product_cart_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/view/screens/product/product_cart.dart';

class CustomProductItem extends StatelessWidget {
  final String productName;
  final String productImg;
  final String description;
  final double? productPrice;
  final int num;
  final int productQty;
  const CustomProductItem({
    required this.productName,
    required this.productImg,
    this.productPrice = 0,
    this.num = 0,
    this.description = "",
    this.productQty = 0,
  });

  @override
  Widget build(BuildContext context) {
    //CartController cartController = Get.find();
    return InkWell(
      onTap: () {
        Get.toNamed(AappRoute.productCart, arguments: {
          "productNum": num,
          "productName": productName,
          "productImg": productImg,
          "productPrice": productPrice,
          "productDescription": description,
          "productQty": productQty,
        });
      },
      child: Container(
        height: 200,
        width: 200,
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    productImg,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                width: double.maxFinite,
                //height: 75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      productName,
                      softWrap: false,
                      maxLines: 3,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      "\$  " + productPrice.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
