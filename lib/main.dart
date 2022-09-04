// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:tina/binding.dart';
import 'package:tina/controller/basket_counter_controller.dart';
import 'package:tina/controller/fav_counter_controller.dart';

import 'package:tina/core/localization/changelocal.dart';
import 'package:tina/core/localization/translation.dart';
import 'package:tina/core/services/services.dart';
import 'package:tina/routes.dart';

import 'package:get/get.dart';

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
        Get.put(FavCounterControllerImp());
        Get.put(BasketCounterControllerImp());
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
