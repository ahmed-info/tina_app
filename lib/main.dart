// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:tina/binding.dart';
import 'package:tina/controller/fav_counter_controller.dart';
import 'package:tina/controller/product_cart_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/localization/changelocal.dart';
import 'package:tina/core/localization/translation.dart';
import 'package:tina/core/services/services.dart';
import 'package:tina/routes.dart';
import 'package:tina/testPackage.dart';
import 'package:tina/view/screens/my_home.dart';
import 'package:get/get.dart';

//import 'package:tina/view/screens/auth/login.dart';
//import 'package:tina/view/screens/categoryDetails.dart';
import 'package:tina/view/screens/language.dart';
import 'package:tina/view/screens/onboarding.dart';

//import 'dart:ui';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    //CartController cartController = Get.put(CartController());
    FavCounterControllerImp favCounterController =
        Get.put(FavCounterControllerImp());
    return GetMaterialApp(
      translations: MyTranslation(),

      debugShowCheckedModeBanner: false,
      title: 'Tina Shop',
      locale: controller.language,
      //home: Language(),
      theme: controller.appTheme,
      initialRoute: '/',
      initialBinding: MyBinding(),
      //routes: routes,
      getPages: routes,
      //CategoryDetails.screenRoute: (ctx) => CategoryDetails(),
    );
  }
}
