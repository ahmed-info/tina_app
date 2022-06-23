// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, unused_import, prefer_final_fields, unnecessary_new, avoid_web_libraries_in_flutter, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/constant/imgAsset.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/category/customMainCategory.dart';
import 'package:tina/view/myWidget/category/groupSubCategory.dart';

class Categories extends StatefulWidget {
  final int? index;
  Categories({Key? key, this.index}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

int? myi = 0;

class _CategoriesState extends State<Categories> {
  List _allGroupSubCategory = [
    GroupSubCategory(listOfSubCategory: subCategoryEpsonList),
    GroupSubCategory(listOfSubCategory: subCategoryTechnowareList),
    GroupSubCategory(listOfSubCategory: subCategoryComputerList),
    GroupSubCategory(listOfSubCategory: subCategoryCameraList),
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

  List<String> _category = [
    "Epson",
    "Technoware",
    "Computer",
    "Camera",
    "k&f",
    "Budget",
    "Games"
  ];

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
              children: _category
                  .asMap()
                  .map((i, element) => MapEntry(
                        i,
                        InkWell(
                          onTap: () {
                            setState(() {
                              myi = i;
                            });
                            return pageController!.jumpToPage(i);
                          },
                          child: CustomMainCategory(
                              imgUrl: 'assets/images/category${i + 1}.png',
                              categoryName: _category[i]),
                        ),
                      ))
                  .values
                  .toList(),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.primaryColor,
                ),
                height: 50,
                width: 250,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    _category[myi!],
                    //textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
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
