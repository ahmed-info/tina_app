import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: 'Alert'.tr,
      middleText: "Do you want to exit the application".tr,
      actions: [
        ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: Text('Confirm'.tr),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Cancel'.tr),
        ),
      ]);
  return Future.value(true);
}
