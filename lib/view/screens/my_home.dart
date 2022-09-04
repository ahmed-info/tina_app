// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/view/myWidget/avatar_and_alert.dart';
import 'package:tina/view/myWidget/BigText.dart';
import 'package:tina/view/myWidget/MySlider.dart';
import 'package:tina/view/myWidget/Partners.dart';
import 'package:tina/view/myWidget/Text_searchBar.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
import 'package:tina/view/screens/app_drawer.dart';
import 'package:tina/view/screens/cart.dart';
import 'package:tina/view/screens/categories.dart';
import 'package:tina/view/screens/contact_us.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<CustomProductItem>? listOfProduct;

  int currentIndex = 0;
  List listOfTabs = [
    SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: TextSearchBar(),
          ),
          MySlider(
            values: "vvvv",
            ind: 1,
          ),
          BigText(text: 'Shop by Brand'.tr),
          Partners()
        ],
      ),
    ),
    Categories(
      index: 0,
      myName: "".tr,
    ),
    // CartListScreen(basketController.basketList.toList()),
    const Cart(),
    ContactUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const AppDrawer(),
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: AppColor.secondaryColor,
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: AvatarAndAlert(),
            ),
          ],
          //backgroundColor: Colors.red,
          elevation: 0.0,
          //title: Text('Sign In', style: Theme.of(context).textTheme.headline1),
        ),
        body: listOfTabs[currentIndex],
        bottomNavigationBar: BottomNavyBar(
          animationDuration: const Duration(microseconds: 2000),
          backgroundColor: Colors.white,
          curve: Curves.easeInOutCirc,
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.home),
              title: Text('Home'.tr),
              activeColor: const Color(0XFF16a085),
              inactiveColor: Colors.black,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.category),
              title: Text('Category'.tr),
              activeColor: const Color(0XFF16a085),
              inactiveColor: Colors.black,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.shopping_cart),
              title: Text('Cart'.tr),
              activeColor: const Color(0XFF16a085),
              inactiveColor: Colors.black,
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.phone),
                title: Text('Contact Us'.tr),
                activeColor: const Color(0XFF16a085),
                inactiveColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
