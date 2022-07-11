// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_img_asset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImgAsset.logoTina,
      height: 170,
    );
  }
}
