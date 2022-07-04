// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/auth/resetPasswordController.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextFormAuth.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());

    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Reset Password',
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
            CustomTextTitleAuth(text: "New Password"),
            SizedBox(height: 10),
            CustomTextBodyAuth(text: 'Please Enter New Password'),
            SizedBox(
              height: 15,
            ),
            CustomTextFormAuth(
              obscureText: true,
              myController: controller.password,
              hinttext: "Enter Your Password",
              icontext: "Password",
              iconData: Icons.lock_clock_outlined,
            ),
            CustomTextFormAuth(
                obscureText: true,
                myController: controller.repassword,
                hinttext: "Re Enter Your Password",
                icontext: "Re Password",
                iconData: Icons.lock_clock_outlined),
            CustomButtonAuth(
              text: "Save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
