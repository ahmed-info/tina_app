// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:tina/controller/onBoarding_controller.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/data/datasource/static/static.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (conroller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: 500),
                    width: conroller.currentPage == index ? 25 : 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                )
              ],
            ));
  }
}
