// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, unused_import, prefer_final_fields, unnecessary_new, avoid_web_libraries_in_flutter, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/constant/imgAsset.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/data/model/subCategoryModel.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/category/customMainCategory.dart';
import 'package:tina/view/myWidget/category/groupSubCategory.dart';
import 'package:tina/view/myWidget/product/customProductItem.dart';
import 'package:tina/view/myWidget/product/groupProduct.dart';
import 'package:tina/view/screens/categories.dart';
import 'package:tina/view/screens/categoryDetails.dart';

class Products extends StatefulWidget {
  final String productName;
  final int num;
  final List<CustomProductItem>? listOfProduct;
  // final List<CustomCategoryItem>? allSubCategory1;
  // final List<List<CustomCategoryItem>>? allSubCategory2;
  Products({
    Key? key,
    required this.productName,
    required this.num,
    this.listOfProduct,
  }) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

int? myi = 0;
int? indexProduct = 0;
//////////////////////////////////////////
// List<CustomProductItem>? listOfProduct;
// List<CustomCategoryItem>? allSubCategory1;
// List<List<CustomCategoryItem>>? allSubCategory2;
//////////////////////////////////////////////
// var xx = CustomCategoryItem(
//   num: 0,
//   categoryNameItem: '',
//   categoryImgItem: "",
// ).categoryNameItem;

class _ProductsState extends State<Products> {
  List _allGroupProduct = [
    GroupProduct(listOfProduct: productProjectorList),
    GroupProduct(listOfProduct: productScannerList),
    GroupProduct(listOfProduct: productPOSList),
    GroupProduct(listOfProduct: productColorLabelList),
    GroupProduct(listOfProduct: productDotMatrixList),
    GroupProduct(listOfProduct: productInkList),
    GroupProduct(listOfProduct: productInkjetPrinterList),

    ///UPS
    GroupProduct(listOfProduct: productUPSDCList),
    GroupProduct(listOfProduct: productUPSLineInteractiveList),
    GroupProduct(listOfProduct: productUPSLineSinewaveList),
    GroupProduct(listOfProduct: productUPsSinglePhaseList),
    GroupProduct(listOfProduct: productUPsThreeList),
    GroupProduct(listOfProduct: productUPsStabe),
    GroupProduct(listOfProduct: productUPsBattery),
    GroupProduct(listOfProduct: productUPsAccessory),

    //Laptop
    GroupProduct(listOfProduct: productLaptop),
    GroupProduct(listOfProduct: productSystem),
    GroupProduct(listOfProduct: productSystem),

    //camera
    GroupProduct(listOfProduct: productCamera),
    GroupProduct(listOfProduct: productLens),

    //k&f
    GroupProduct(listOfProduct: productBackPack),
    GroupProduct(listOfProduct: productReflector),
    GroupProduct(listOfProduct: productMicrphone),

    //Budget
    GroupProduct(listOfProduct: productTable),
    GroupProduct(listOfProduct: productChair),

    //Gaming
    GroupProduct(listOfProduct: productTable),
    GroupProduct(listOfProduct: productChair),
  ];

  PageController? pageController;
  @override
  void initState() {
    //pageController = new PageController(initialPage: 0, viewportFraction: 0.95);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColor.primaryColor,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          width: 350,
          height: 2010,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //subCategoryEpsonList[0].categoryNameItem.toString()
                //CustomCategoryItem
                child: Text(CustomCategoryItem(
                  num: widget.num,
                  categoryNameItem: widget.productName,
                  categoryImgItem: "",
                ).categoryNameItem),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 350,
                height: 2000,
                child: PageView.builder(
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  reverse: false,
                  itemCount: _allGroupProduct.length,
                  itemBuilder: (BuildContext ctx, int indexx) {
                    //indexProduct= indexx;
                    return Container(
                      child: _allGroupProduct[indexProduct!],
                    );
                  },
                  onPageChanged: (indexPage) {
                    print("helloooooo " + indexPage.toString());
                  },
                  controller: pageController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
