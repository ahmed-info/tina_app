// ignore_for_file: file_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/constant/appRoute.dart';

class AvatarAndAlert extends StatefulWidget {
  AvatarAndAlert({Key? key}) : super(key: key);

  @override
  State<AvatarAndAlert> createState() => _AvatarAndAlertState();
}

class _AvatarAndAlertState extends State<AvatarAndAlert> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 65),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/logoTina.jpg',
                  ),
                )),
          ),
          // SizedBox(
          //   width: 20,
          // ),
          Container(
            child: const Text(
              'Tina Shop',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff025c1f)),
            ),
          ),
          // SizedBox(
          //   width: 20,
          // ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            margin: const EdgeInsets.only(bottom: 12),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(AappRoute.mynotifcation);
                  },
                  child: const Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: AppColor.secondaryColor,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, left: 15),
                  padding: const EdgeInsets.only(bottom: 0, top: 0),
                  height: 14,
                  width: 14,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
