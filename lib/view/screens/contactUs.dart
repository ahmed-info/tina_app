// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:tina/view/myWidget/rounded_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher/link.dart';

//import 'package:messenger_launcher/messenger_launcher.dart';
class ContactUs extends StatefulWidget {
  ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  void initState() {
    super.initState();
  }

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
                  const url = "whatsapp://send?phone=+9647840500028";
                  socialMedia(url);
                }),
            RoundedButton(
                btnText: "ماسنجر",
                colorText: Colors.white,
                colorBtn: Colors.blue,
                iconBtn: Icons.messenger_rounded,
                onBtnPressed: () {
                  const url = "http://m.me/greenfig2019";
                  socialMedia(url);
                }),
            RoundedButton(
                btnText: "فيسبوك",
                colorText: Colors.white,
                colorBtn: const Color(0xff000dff),
                iconBtn: Icons.facebook,
                onBtnPressed: () {
                  const String url = "https://www.facebook.com/greenfig2019";
                  socialMedia(url);
                }),
            RoundedButton(
                btnText: "تيليكرام",
                colorText: Colors.white,
                colorBtn: const Color(0xff039be4),
                iconBtn: Icons.telegram,
                onBtnPressed: () {
                  const url = "tg://resolve?domain=tinacompany1";
                  socialMedia(url);
                }),
            RoundedButton(
                btnText: "اتصل بنا",
                colorText: Colors.white,
                colorBtn: Colors.amber,
                iconBtn: Icons.phone,
                onBtnPressed: () {
                  const url = 'tel:+9647840500028';
                  socialMedia(url);
                }),
            RoundedButton(
                btnText: "البريد الالكتروني",
                colorText: Colors.white,
                colorBtn: Colors.redAccent,
                iconBtn: Icons.email_outlined,
                onBtnPressed: () {
                  email();
                }),
          ],
        ),
      ),
    );
  }

  socialMedia(String urlSocial) async {
    if (await canLaunchUrlString(urlSocial)) {
      await launchUrlString(urlSocial);
    } else {
      throw 'Could not launch $urlSocial';
    }
  }

  email() async {
    final Uri _emailUrl = Uri(
        scheme: "mailto",
        path: "salas@tina-iq.com",
        queryParameters: {'subject': ' مرحبا بكم '});
    if (await canLaunchUrlString(_emailUrl.toString())) {
      await launchUrlString(_emailUrl.toString());
    } else {
      throw 'Could not launch $_emailUrl';
    }
  }
}
