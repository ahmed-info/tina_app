// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/view/myWidget/Avatar_and_alert.dart';
import 'package:tina/view/myWidget/BigText.dart';
import 'package:tina/view/myWidget/MySlider.dart';
import 'package:tina/view/myWidget/Partners.dart';
import 'package:tina/view/myWidget/Text_searchBar.dart';
import 'package:tina/view/screens/AppDrawer.dart';
import 'package:tina/view/screens/categories.dart';
import 'package:tina/view/screens/contactUs.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
          BigText(text: 'Featured Partners'),
          Partners()
        ],
      ),
    ),
    Categories(),
    ContactUs(),
    // Padding(
    //   padding: const EdgeInsets.only(left: 30, right: 30),
    //   child: Container(
    //     color: Colors.redAccent,
    //   ),
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: AppColor.secondaryColor,
          centerTitle: true,
          actions: [
            AvatarAndAlert(),
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
                title: const Text('Home'),
                activeColor: const Color(0XFF16a085),
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.category),
                title: const Text('Category'),
                activeColor: const Color(0XFF16a085),
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.phone),
                title: const Text('Contact Us'),
                activeColor: const Color(0XFF16a085),
                inactiveColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
