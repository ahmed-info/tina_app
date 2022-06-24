// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/auth/checkEmailController.dart';
import 'package:tina/controller/auth/forgetPasswordController.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextFormAuth.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());

    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Check Email',
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
            CustomTextTitleAuth(text: "Success SignUp"),
            SizedBox(height: 10),
            CustomTextBodyAuth(text: 'Please En'),
            SizedBox(
              height: 15,
            ),

            CustomTextFormAuth(
                myController: controller.email,
                hinttext: "Enter Your Email",
                icontext: "Email",
                iconData: Icons.email_outlined),
            CustomButtonAuth(
              text: "Check",
              onPressed: () {
                controller.goToSuccessSignUp();
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