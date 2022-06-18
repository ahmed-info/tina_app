import 'package:flutter/material.dart';
import 'package:tina/core/constant/appRoute.dart';
import 'package:tina/view/screens/auth/login.dart';
import 'package:tina/view/screens/myHome.dart';
import 'package:tina/view/screens/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AappRoute.login: (context) => const Login(),
  AappRoute.home: (context) => MyHome(),
  AappRoute.onBoarding: (context) => const OnBoarding(),
};
