// ignore_for_file: file_names, unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/onBoarding_controller.dart';
import 'package:tina/core/constant/appColor.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(bottom: 30),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 100),
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        child: const Text(
          'Continue',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
