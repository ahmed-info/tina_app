// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, unused_import, prefer_final_fields, unnecessary_new, avoid_web_libraries_in_flutter, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/constant/imgAsset.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/category/customMainCategory.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List _colors = [
    Container(
      height: 200,
      width: 200,
      //margin: EdgeInsets.only(bottom: 150),
      child: SingleChildScrollView(
          child: Container(
        width: 200,
        height: 900,
        child: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 7 / 8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          children: categoryItemList
              .map((e) => CustomCategoryItem(
                    categoryImgItem: e.categoryImgItem,
                    categoryNameItem: e.categoryNameItem,
                  ))
              .toList(),
        ),
      )),
    ),
    //Colors.redAccent,
    Container(
      child: Center(child: Text('Technoware')),
    ),
    Container(
      child: Center(child: Text('Computer')),
    ),
    Container(
      child: Center(child: Text('Camera')),
    ),
    Container(
      child: Center(child: Text('K&F')),
    ),
    Container(
      child: Center(child: Text('Budget')),
    ),
    Container(
      child: Center(child: Text('Games')),
    ),
  ];
  PageController? pageController;
  @override
  void initState() {
    pageController = new PageController(initialPage: 0, viewportFraction: 0.85);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: Container(
            //height: 800,
            width: 80,
            //color: const Color(0XFF16a085),
            //color: Colors.amber,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                InkWell(
                  onTap: () {
                    return pageController!.jumpToPage(0);
                  },
                  child: CustomMainCategory(
                      imgUrl: AppImgAsset.category1, categoryName: 'Epson'),
                ),
                InkWell(
                  onTap: () {
                    return pageController!.jumpToPage(1);
                  },
                  child: CustomMainCategory(
                      imgUrl: AppImgAsset.category2,
                      categoryName: 'Technoware'),
                ),
                InkWell(
                  onTap: () {
                    return pageController!.jumpToPage(2);
                  },
                  child: CustomMainCategory(
                      imgUrl: AppImgAsset.category3, categoryName: 'Computer'),
                ),
                InkWell(
                  onTap: () {
                    return pageController!.jumpToPage(3);
                  },
                  child: CustomMainCategory(
                      imgUrl: AppImgAsset.category4, categoryName: 'Camera'),
                ),
                InkWell(
                  onTap: () {
                    return pageController!.jumpToPage(4);
                  },
                  child: CustomMainCategory(
                      imgUrl: AppImgAsset.category5, categoryName: 'K&F'),
                ),
                InkWell(
                  onTap: () {
                    return pageController!.jumpToPage(5);
                  },
                  child: CustomMainCategory(
                      imgUrl: AppImgAsset.category6, categoryName: 'Budget'),
                ),
                InkWell(
                  onTap: () {
                    return pageController!.jumpToPage(6);
                  },
                  child: CustomMainCategory(
                      imgUrl: AppImgAsset.category7, categoryName: 'Games'),
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                //margin: EdgeInsets.only(bottom: 150),
                width: 250,
                height: 900,
                child: PageView.builder(
                  //Behavior: ScrollBehavior(),
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  //pageSnapping: false,
                  reverse: false,
                  itemCount: _colors.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Container(
                      child: _colors[index],
                    );
                  },
                  controller: pageController,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
