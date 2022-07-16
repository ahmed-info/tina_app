// ignore_for_file: unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/view/screens/category_details.dart';

class MySlider extends StatefulWidget {
  final String values;
  final int ind;

  MySlider({Key? key, required this.values, required this.ind})
      : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

int i = 0;

class _MySliderState extends State<MySlider> {
  late final PageController pageController;
  int pageNo = 0;
  Timer? carasuelTimer;
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 6) {
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
      viewportFraction: 0.50,
    );
    carasuelTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  var categoryList = [
    'Epson'.tr,
    'Tecnoware'.tr,
    'Computer'.tr,
    'Camera'.tr,
    'K&F'.tr,
    'Budget'.tr,
    'Gaming'.tr,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        child: Column(children: [
          InkWell(
            onTap: () {
              //Navigator.of(context).pushNamed();
            },
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    categoryList.length,
                    (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CategoryDetails(
                                    value: '${categoryList[index]}',
                                    index: index + 1),
                              ),
                            );
                          },
                          onPanDown: (d) {
                            carasuelTimer?.cancel();
                            carasuelTimer = null;
                          },
                          onPanCancel: () {
                            carasuelTimer = getTimer();
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 25),
                                child: Text(
                                  '${categoryList[index]}',
                                  style: TextStyle(
                                      fontWeight: pageNo == index
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 25),
                                child: Icon(
                                  Icons.circle,
                                  size: 15,
                                  color: pageNo == index
                                      ? Colors.green
                                      : Colors.green.withOpacity(0),
                                ),
                              ),
                            ],
                          ),
                        )).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: SizedBox(
              height: 260,
              //Sliderssss
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CategoryDetails(
                        value: '${categoryList[i]}',
                        index: i + 1,
                      ),
                    ),
                  );
                  // Get.toNamed(AappRoute.categoryDetails, arguments: {
                  //   "value": '${categoryList[i]}',
                  //   "index": i + 1
                  // });
                },
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    pageNo = index;
                    i = index;
                    setState(() {});
                  },
                  itemBuilder: (_, index) {
                    return AnimatedBuilder(
                      animation: pageController,
                      builder: (ctx, child) {
                        return child!;
                      },
                      child: InkWell(
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  height: 260,
                                  width: double.infinity,
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          bottom: 15, left: 20, right: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                // 'Camera',
                                                '${categoryList[index]}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      alignment: Alignment.bottomLeft),
                                  decoration: BoxDecoration(
                                      //color: Color(0xff025c1f),
                                      color: Color(0XFF16a085),
                                      borderRadius: BorderRadius.circular(24)),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(8),
                                  //height image
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        'assets/images/category${index + 1}.png',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25)),
                              child: MaterialButton(
                                padding: const EdgeInsets.all(7),
                                onPressed: () {},
                                minWidth: 20,
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: categoryList.length,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
