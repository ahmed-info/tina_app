// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
import 'package:tina/view/myWidget/product/group_product.dart';

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
  // ignore: prefer_final_fields
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
                    //print("helloooooo " + indexPage.toString());
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
