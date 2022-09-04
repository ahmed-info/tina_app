// ignore_for_file: unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, non_constant_identifier_names, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/data/datasource/static/static.dart';

class Partners extends StatefulWidget {
  Partners({Key? key}) : super(key: key);

  @override
  State<Partners> createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {
  late final PageController pageController;
  int pageNo = 0;
  Timer? carasuelTimer;
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 10) {
        pageNo == 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.33,
    );
    carasuelTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  var brandList1 = [
    'Epson'.tr,
    'Canon'.tr,
    'Sony'.tr,
    'Tecnoware'.tr,
    'GoPro'.tr,
    'Hp'.tr,
    'Dji'.tr,
    'Budget'.tr,
    'Brother'.tr,
    'Nikon'.tr
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          children: List.generate(
              brandList1.length,
              (index) => GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Hello you tapped at ${index + 1} ")));
                      Get.toNamed(AappRoute.favorite);
                    },
                    onPanDown: (d) {
                      carasuelTimer?.cancel();
                      carasuelTimer = null;
                    },
                    onPanCancel: () {
                      carasuelTimer = getTimer();
                    },
                    child: Column(
                      children: [],
                    ),
                  )).toList(),
        ),
        const SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: SizedBox(
            ///////////////
            height: 440,
            //////////////////
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                pageNo = index;

                setState(() {});
              },
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    AnimatedBuilder(
                      animation: pageController,
                      builder: (ctx, child) {
                        return child!;
                      },
                      child: SlideBrand(index, brandList1),
                    ),

                    ////////////////
                  ],
                );
              },
              itemCount: brandList1.length,
            ),
          ),
        )
      ]),
    );
  }

  GestureDetector SlideBrand(int index, List<String> mylist) {
    return GestureDetector(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                height: 150,
                width: 200,
                child: Container(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 10, right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          // mainAxisAlignment:
                          //     MainAxisAlignment.start,
                          children: [
                            Text(
                              '${mylist[index]}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    alignment: Alignment.bottomLeft),
                decoration: BoxDecoration(
                    //color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(24)),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AappRoute.productPartner, arguments: {
                    "index": index,
                    "listOfBrand": allBrand[index],
                    "brandName": brandList1[index]
                  });
                  print("||||||||||||||||||||||" + index.toString());
                  print(allBrand[index]);
                  print(allBrand[index][2].categoryNameItem);
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  //height image
                  height: 100,
                  width: 201,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/images/partner${index + 1}.png',
                        )),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
