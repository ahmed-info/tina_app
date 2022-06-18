// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:tina/view/myWidget/rounded_button.dart';
//import 'package:open_whatsapp/open_whatsapp.dart';
//import 'package:messenger_launcher/messenger_launcher.dart';

class ContactUs extends StatefulWidget {
  ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedButton(
                btnText: "واتساب",
                colorText: Colors.white,
                colorBtn: const Color(0xff26b53d),
                iconBtn: Icons.whatsapp,
                onBtnPressed: () {
                  // FlutterOpenWhatsapp.sendSingleMessage(
                  //     "+9647811077718", "Hello");
                }),
            RoundedButton(
                btnText: "ماسنجر",
                colorText: Colors.white,
                colorBtn: Colors.blue,
                iconBtn: Icons.messenger_rounded,
                onBtnPressed: () {}),
            RoundedButton(
                btnText: "فيسبوك",
                colorText: Colors.white,
                colorBtn: const Color(0xff000dff),
                iconBtn: Icons.facebook,
                onBtnPressed: () {}),
            RoundedButton(
                btnText: "تيليكرام",
                colorText: Colors.white,
                colorBtn: const Color(0xff039be4),
                iconBtn: Icons.telegram,
                onBtnPressed: () {}),
            RoundedButton(
                btnText: "اتصل بنا",
                colorText: Colors.white,
                colorBtn: Colors.amber,
                iconBtn: Icons.phone,
                onBtnPressed: () {}),
          ],
        ),
      ),
    );
  }
}
