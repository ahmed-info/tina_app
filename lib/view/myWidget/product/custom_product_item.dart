// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

class CustomProductItem extends StatelessWidget {
  final String productName;
  final String productImg;
  final String description;
  final double? productPrice;
  final int num;
  const CustomProductItem({
    required this.productName,
    required this.productImg,
    this.productPrice = 0,
    this.num = 0,
    this.description = "",
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AappRoute.productCart, arguments: {
          "productNum": num,
          "productName": productName,
          "productImg": productImg,
          "productPrice": productPrice,
          "productDescription": description,
        });
      },
      child: Hero(
        tag: num,
        child: Container(
          padding: EdgeInsets.only(top: 8),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(productImg), fit: BoxFit.scaleDown),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Text(productName,
                    style: Theme.of(context).textTheme.headline3),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
                //padding: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ " + productPrice.toString(),
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
