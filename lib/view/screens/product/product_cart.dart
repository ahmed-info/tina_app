// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/product_cart_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/view/myWidget/product/build_button.dart';
import 'package:tina/view/myWidget/rounded_button.dart';

class ProductCart extends StatefulWidget {
  ProductCart({Key? key}) : super(key: key);

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CartController cartController = Get.put(CartController());

    return Container(
      //color: Colors.green,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: AppColor.primaryColor,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            //icon: SvgPicture.asset("assets/svg/back.svg"),
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Badge(
                  padding: EdgeInsets.only(left: 5, right: 5, bottom: 10),
                  badgeContent: Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.favorite)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Badge(
                  padding: EdgeInsets.only(left: 5, right: 5, bottom: 10),
                  badgeColor: Colors.blue,
                  badgeContent: Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.shopping_cart)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: size.height * 0.3,
                  width: size.width,
                  color: Colors.white,
                  child: Image.asset(Get.arguments['productImg']),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                    height: size.height * 0.7,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 80, left: 20, right: 20, bottom: 30),
                          child: Text(Get.arguments['productName'],
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(fontSize: 18),
                              overflow: TextOverflow.clip,
                              maxLines: 3),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Price\n",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              TextSpan(
                                text: Get.arguments['productPrice'].toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(color: Colors.white),
                              ),
                            ]),
                          ),
                        ),
                        Get.arguments['productDescription'] != ""
                            ? Container(
                                height: 150,
                                width: size.width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 90, 173, 155),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  Get.arguments['productDescription'],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  maxLines: 6,
                                ),
                              )
                            : Container(),
                        Container(
                          alignment: Alignment.center,
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BuildButton(
                          icon: Icons.add,
                          onPressed: () {
                            cartController.addItem();
                          },
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Obx(
                              () => Text(
                                cartController.numOfItems
                                    .toString()
                                    .padLeft(2, "0"),
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            )),
                        BuildButton(
                          icon: Icons.remove,
                          onPressed: () {
                            cartController.removeItem();
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
