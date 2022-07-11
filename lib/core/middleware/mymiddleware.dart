// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/core/services/services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AappRoute.home);
    }
  }
}
