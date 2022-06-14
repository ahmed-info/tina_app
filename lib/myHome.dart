import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tina/myWidget/Avatar_and_alert.dart';
import 'package:tina/myWidget/BigText.dart';
import 'package:tina/myWidget/MySlider.dart';
import 'package:tina/myWidget/Partners.dart';
import 'package:tina/myWidget/Text_searchBar.dart';
import 'package:tina/screens/categories.dart';
import 'package:tina/screens/contactUs.dart';

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
          AvatarAndAlert(),
          TextSearchBar(),
          MySlider(),
          BigText(text: 'Featured Partners'),
          Partners()
        ],
      ),
    ),
    Categories(),
    ContactUs(),
    Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Container(
        color: Colors.redAccent,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        // appBar: AppBar(
        //   actions: [AvatarAndAlert()],
        // ),
        body: listOfTabs[currentIndex],
        bottomNavigationBar: BottomNavyBar(
          animationDuration: Duration(microseconds: 2000),
          backgroundColor: Colors.grey.shade200,
          curve: Curves.easeInOutCirc,
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Color(0XFF16a085),
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.category),
                title: Text('Category'),
                activeColor: Color(0XFF16a085),
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.phone),
                title: Text('Contact Us'),
                activeColor: Color(0XFF16a085),
                inactiveColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
