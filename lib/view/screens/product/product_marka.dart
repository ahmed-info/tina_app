// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/product_marka_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
import 'package:tina/view/myWidget/product/group_product.dart';
import 'package:tina/view/screens/product/products.dart';

class ProductMarka extends StatefulWidget {
  final String productName;
  final int num;
  final List<CustomProductItem>? listOfProduct;
  //final List<CustomProductItem> favProducts;

  // final List<CustomCategoryItem>? allSubCategory1;
  // final List<List<CustomCategoryItem>>? allSubCategory2;
  ProductMarka({
    Key? key,
    required this.productName,
    required this.num,
    this.listOfProduct,
  }) : super(key: key);

  @override
  State<ProductMarka> createState() => _ProductMarkaState();
}

class _ProductMarkaState extends State<ProductMarka>
    with TickerProviderStateMixin {
  // ignore: prefer_final_fields

  //PageController? pageController;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    //pageController = new PageController(initialPage: 0, viewportFraction: 0.95);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController;
    ProductMarkaControllerImp markaController =
        Get.put(ProductMarkaControllerImp());
    Size size = MediaQuery.of(context).size;

    print("===========================");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColor.primaryColor,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        //width: 200,
        //height: 200,
        child: SingleChildScrollView(
          primary: true,
          //physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Container(
                  //subCategoryEpsonList[0].categoryNameItem.toString()
                  //CustomCategoryItem
                  width: 250,
                  height: 50,
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.primaryColor,
                  ),
                  child: Text(
                    Get.arguments['value'],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.maxFinite,
                height: 300,
                // child: PageView.builder(
                //   allowImplicitScrolling: true,
                //   scrollDirection: Axis.vertical,
                //   //physics: BouncingScrollPhysics(),
                //   reverse: false,
                //   itemCount: Get.arguments['listOfSubCategory'].length,
                //   //itemCount: Get.arguments['listOfSubCategory'].length,
                //   itemBuilder: (BuildContext ctx2, int indexx) {
                //     //indexProduct= indexx;
                //     return AnimatedBuilder(
                //       animation: _controller,
                //       builder: (ctx, child) {
                //         return child!;
                //       },
                //     );
                //   },
                //   //controller: pageController,
                // ),
                child: PageView.builder(
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  reverse: false,
                  itemCount: Get.arguments['listOfSubCategory'].length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      child: Get.arguments['listOfSubCategory'][index],
                    );
                  },
                  //controller: pageController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
