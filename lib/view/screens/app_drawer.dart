import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/constant/app_route.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 8, right: 10),
            alignment: Alignment.center,
            color: AppColor.primaryColor,
            child: Text(
              'Settings'.tr,
              style:const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          buildListTile('language'.tr, Icons.language_outlined, () {
            Get.toNamed(AappRoute.language);
          }),
          const SizedBox(
            height: 8,
          ),
          buildListTile('Registeration'.tr, Icons.login, () {
            Get.toNamed(AappRoute.login);
          }),
          const SizedBox(
            height: 8,
          ),
          buildListTile('Favorite'.tr, Icons.favorite_border_outlined, () {
            Get.toNamed(AappRoute.favorite);
          }),
          const SizedBox(
            height: 8,
          ),
          buildListTile('Categories'.tr, Icons.category_outlined, () {
            //Get.toNamed(AappRoute.categories);
          }),
        ],
      ),
    );
  }

  Widget buildListTile(String title, IconData icon, Function onTabLink) {
    return ListTile(
        leading: Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          onTabLink();
        });
  }
}
