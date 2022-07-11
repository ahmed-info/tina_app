// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/auth/success_signup_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColor.primaryColor,
        title: Text('Success', style: Theme.of(context).textTheme.bodyText1),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Icon(Icons.check_circle_outline,
                  size: 200, color: AppColor.primaryColor),
            ),
            Text('successfully Registerd'),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: 'Go To Login',
                onPressed: () {
                  //Get.offNamed(AappRoute.login);
                  controller.goToPageLogin();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
