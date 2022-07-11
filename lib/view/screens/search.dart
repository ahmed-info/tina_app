// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_color.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColor.primaryColor,
        elevation: 0.0,
      ),
      body: Container(
        child: const Center(
          child: Text('لا توجد نتائج للبحث'),
        ),
      ),
    );
  }
}