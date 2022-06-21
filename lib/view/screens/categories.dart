// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, unused_import, prefer_final_fields, unnecessary_new, avoid_web_libraries_in_flutter, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/constant/imgAsset.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/category/customMainCategory.dart';
import 'package:tina/view/myWidget/category/groupSubCategory.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List _allGroupSubCategory = [
    GroupSubCategory(listOfSubCategory: subCategoryEpsonList),
    GroupSubCategory(listOfSubCategory: subCategoryTechnowareList),
    GroupSubCategory(listOfSubCategory: subCategoryComputerList),
    Container(
      child: Center(child: Text('Camera')),
    ),
    GroupSubCategory(listOfSubCategory: subCategoryKAndFList),
    GroupSubCategory(listOfSubCategory: subCategoryBudgetList),
    GroupSubCategory(listOfSubCategory: subCategoryGamesList),
  ];
  PageController? pageController;
  @override
  void initState() {
    pageController = new PageController(initialPage: 0, viewportFraction: 0.95);
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
                  itemCount: _allGroupSubCategory.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Container(
                      child: _allGroupSubCategory[index],
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
