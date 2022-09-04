import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:tina/core/classes/status_request.dart';
import 'package:tina/core/constant/app_img_asset.dart';

class HandlingDataRequest extends StatelessWidget {
  const HandlingDataRequest({
    Key? key,
    required this.statusRequest,
    required this.widget,
  }) : super(key: key);
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    if (statusRequest == StatusRequest.loading) {
      return Center(
          child: Lottie.asset(AppImgAsset.loading, width: 250, height: 250));
    } else if (statusRequest == StatusRequest.offlinefailure) {
      return Center(
          child: Lottie.asset(AppImgAsset.offline, width: 250, height: 250));
    } else if (statusRequest == StatusRequest.serverfailure) {
      return Center(
          child: Lottie.asset(AppImgAsset.failure, width: 250, height: 250));
    } else {
      return widget;
    }
  }
}
