// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/onboarding_controller.dart';
import 'package:tina/view/myWidget/onboarding/customButton.dart';
import 'package:tina/view/myWidget/onboarding/customSlider.dart';
import 'package:tina/view/myWidget/onboarding/dotIndicator.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    DotIndicator(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
