// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextFormAuth.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Sign In',
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
              SizedBox(height: 20),
              CustomTextTitleAuth(text: "Welcome Back"),
              SizedBox(height: 10),
              //////////////////////////////////////
              CustomTextBodyAuth(
                  text:
                      'Sign In With Your Email And Password OR Continue With Social Media'),
              SizedBox(
                height: 65,
              ),
              CustomTextFormAuth(
                  hinttext: "Enter Your Email",
                  icontext: "Email",
                  iconData: Icons.email_outlined),
              CustomTextFormAuth(
                  hinttext: "Enter Your Password",
                  icontext: "Password",
                  iconData: Icons.lock_outline),
            ],
          )),
    );
  }
}
