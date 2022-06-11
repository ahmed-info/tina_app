// ignore_for_file: unnecessary_string_interpolations, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

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
      viewportFraction: 0.70,
    );
    carasuelTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  var placeList = ['Epson', 'Tecnoware', 'Computer', 'Camera', 'K&F', 'Budget'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
        child: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  placeList.length,
                  (index) => GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("Hello you tapped at ${index + 1} ")));
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
                                '${placeList[index]}',
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
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: SizedBox(
              height: 260,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  pageNo = index;

                  setState(() {});
                },
                itemBuilder: (_, index) {
                  return AnimatedBuilder(
                    animation: pageController,
                    builder: (ctx, child) {
                      return child!;
                    },
                    child: GestureDetector(
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
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              // 'Camera',
                                              '${placeList[index]}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.bottomLeft),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24)),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                //height image
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
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
                              child: GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: const Icon(
                                      Icons.favorite,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: placeList.length,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
