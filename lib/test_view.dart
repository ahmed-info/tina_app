import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/test_controller.dart';
import 'package:tina/core/classes/handlingdatarequest.dart';
import 'package:tina/core/constant/app_color.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: AppColor.primaryColor,
      ),
      body: GetBuilder<TestController>(
        builder: (controller) {
          return HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: ((context, index) {
                  return Text("${controller.data}");
                }),
              ));
        },
      ),
    );
  }
}
