// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Container(
                  //height: 800,
                  width: 100,
                  //color: const Color(0XFF16a085),
                  //color: Colors.amber,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/category1.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/category2.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/category3.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/category4.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/category5.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/category6.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/category7.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/category8.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 260,
                color: Colors.greenAccent,
              )
            ],
          )
        ],
      ),
    );
  }
}
