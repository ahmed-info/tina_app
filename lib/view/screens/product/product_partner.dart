// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
import 'package:tina/view/myWidget/product/group_product.dart';

class ProductPartner extends StatefulWidget {
  final String productName;
  final int num;
  final List<CustomProductItem>? listOfProduct;

  ProductPartner({
    Key? key,
    required this.productName,
    required this.num,
    this.listOfProduct,
  }) : super(key: key);

  @override
  State<ProductPartner> createState() => _ProductPartnerState();
}

int? myi = 0;
int? indexPartner = 0;

class _ProductPartnerState extends State<ProductPartner> {
  // ignore: prefer_final_fields
  //all group brand
  List allGroupProductBrand = [
    GroupProduct(listOfProduct: productProjectorList),
    GroupProduct(listOfProduct: productScannerList),
    GroupProduct(listOfProduct: productPOSList),
    GroupProduct(listOfProduct: productColorLabelList),
    GroupProduct(listOfProduct: productDotMatrixList),
    GroupProduct(listOfProduct: productInkList),
    GroupProduct(listOfProduct: productInkjetPrinterList),
  ];
  List allGroupProduct = [
    //Epson
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
    super.initState();
  }

  final PageController ctrl = PageController(
    viewportFraction: 0.50,
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  //subCategoryEpsonList[0].categoryNameItem.toString()
                  //CustomCategoryItem
                  child: Text(
                    Get.arguments['brandName'].toString(),
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: size.width - 20,
                  height: 500,
                  child: PageView.builder(
                    controller: ctrl,
                    allowImplicitScrolling: true,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    reverse: false,
                    itemCount: Get.arguments['listOfBrand'].length,
                    itemBuilder: (BuildContext ctx, int indexx) {
                      //indexProduct= indexx;
                      return Container(
                        height: 500,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Get.arguments['listOfBrand'][indexx],
                      );
                    },
                    onPageChanged: (indexPage) {
                      //print("helloooooo " + indexPage.toString());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
