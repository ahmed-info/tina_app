// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/view/myWidget/rounded_button.dart';

class AddToCart extends StatelessWidget {
  final void Function() onTapFunc;
  const AddToCart({
    Key? key,
    required this.onTapFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: onTapFunc,
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 25),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Icon(
                Icons.shopping_cart_checkout_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          child: RoundedButton(
            btnText: "Buy Now",
            colorText: AppColor.primaryColor,
            colorIcon: AppColor.primaryColor,
            colorBtn: Colors.white,
            minWidth: 200,
            iconBtn: Icons.shopping_cart,
            onBtnPressed: () {},
          ),
        ),
      ],
    );
  }
}
