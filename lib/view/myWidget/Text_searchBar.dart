// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/appRoute.dart';

class TextSearchBar extends StatefulWidget {
  @override
  State<TextSearchBar> createState() => _TextSearchBarState();
}

class _TextSearchBarState extends State<TextSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Container(
      width: 312,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 3),
            )
          ]),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextField(
            textAlign: TextAlign.center,
            clipBehavior: Clip.none,
            cursorColor: Colors.grey,
            style: const TextStyle(color: Colors.grey),
            onChanged: (val) {},
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixStyle: TextStyle(),
              hintText: "Search In Prodect".tr,
              hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
              iconColor: Colors.grey,
              //suffixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Material(
              elevation: 7,
              color: Colors.white,
              borderRadius: BorderRadius.circular(60),
              borderOnForeground: true,
              child: MaterialButton(
                padding: const EdgeInsets.only(right: 5, left: 5),
                onPressed: () {
                  Get.toNamed(AappRoute.search);
                },
                minWidth: 5,
                height: 20,
                child: const Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
