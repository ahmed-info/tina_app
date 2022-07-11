// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/onboarding_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            onBoardingList[i].title,
            style: const TextStyle(
                fontSize: 20,
                color: AppColor.black,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 80,
          ),
          Image.asset(
            onBoardingList[i].image,
            width: 200,
            height: Get.width / 1.7,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2,
                  color: AppColor.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
