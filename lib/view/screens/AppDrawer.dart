// ignore_for_file: file_names, unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/constant/appRoute.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 8, right: 10),
            alignment: Alignment.center,
            color: AppColor.primaryColor,
            child: const Text(
              'الاعدادات',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          buildListTile('تسجيل الدخول', Icons.login, () {
            Get.toNamed(AappRoute.login);
          }),
        ],
      ),
    );
  }

  Widget buildListTile(String title, IconData icon, Function onTabLink) {
    return ListTile(
        leading: Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          onTabLink();
        });
  }
}
