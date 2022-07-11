// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, prefer_final_fields, unnecessary_new, avoid_web_libraries_in_flutter, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customMainCategory.dart';
import 'package:tina/view/myWidget/category/groupSubCategory.dart';

class Categories extends StatefulWidget {
  final int index;
  final String myName;

  Categories({Key? key, required this.index, required this.myName})
      : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

int? myi = 0;
int? gooo = 0;
int indexpage = 0;

class _CategoriesState extends State<Categories> {
  List allGroupSubCategory = [
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: categoryList
                  .asMap()
                  .map((iiii, element) => MapEntry(
                        iiii,
                        InkWell(
                          onTap: () {
                            setState(() {
                              myi = iiii;
                              gooo = iiii;
                              indexpage = iiii;
                              //indexProduct =i;
                            });
                            return pageController!.jumpToPage(iiii);
                            //return pageController. == 0;
                          },
                          child: CustomMainCategory(
                              imgUrl: 'assets/images/category${iiii + 1}.png',
                              categoryName: categoryList[iiii]),
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
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.primaryColor,
                ),
                height: 50,
                width: 250,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    categoryList[myi!],
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
              Container(
                //margin: EdgeInsets.only(bottom: 150),
                width: 250,
                height: 650,
                child: PageView.builder(
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  reverse: false,
                  itemCount: allGroupSubCategory.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      child: allGroupSubCategory[index],
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
