// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/auth/forget_password_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/functions/valid_input.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextFormAuth.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());

    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Forget Password'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            CustomTextTitleAuth(text: "Check Email".tr),
            SizedBox(height: 10),
            CustomTextBodyAuth(text: 'Please Enter Email'.tr),
            SizedBox(
              height: 15,
            ),

            CustomTextFormAuth(
                isNumber: true,
                valid: (val) {
                  return validInput(val!, 5, 100, "email".tr);
                },
                myController: controller.email,
                hinttext: "Enter Your Email".tr,
                icontext: "Email".tr,
                iconData: Icons.email_outlined),
            CustomButtonAuth(
              text: "Check".tr,
              onPressed: () {
                controller.goToVerfiyCode();
              },
            ),
            SizedBox(
              height: 30,
            ),
            //////////test/////////////
          ],
        ),
      ),
    );
  }
}
