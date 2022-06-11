import 'package:flutter/material.dart';
import 'package:tina/myWidget/Avatar_and_alert.dart';
import 'package:tina/myWidget/MySlider.dart';
import 'package:tina/myWidget/Text_searchBar.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        // appBar: AppBar(
        //   actions: [AvatarAndAlert()],
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AvatarAndAlert(),
              TextSearchBar(),
              MySlider(),
            ],
          ),
        ),
      ),
    );
  }
}
