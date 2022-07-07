// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProductItem extends StatelessWidget {
  final String productName;
  final String productImg;
  final double? price;
  final int num;
  final bool isFaviorate;
  const CustomProductItem({
    required this.productName,
    required this.productImg,
    this.price = 0,
    this.num = 0,
    this.isFaviorate = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                    "\$ " + price.toString(),
                    style: TextStyle(color: Colors.blue),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      isFaviorate ? Icons.favorite : Icons.favorite_outline,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
