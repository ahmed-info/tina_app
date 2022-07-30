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

  final PageController ctrl = PageController(
    viewportFraction: 0.50,
  );
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
        height: 1750,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(parent: ScrollPhysics()),
          scrollDirection: Axis.vertical,
          child: Container(
            //color: Colors.amber,
            color: Colors.white,
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
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
                ),
                SizedBox(
                  height: 5,
                ),
                //height of item
                Expanded(
                  flex: 13,
                  child: Container(
                    margin: EdgeInsets.only(top: 0),
                    width: 300,
                    height: 300,
                    child: PageView.builder(
                      controller: ctrl,
                      allowImplicitScrolling: true,
                      scrollDirection: Axis.vertical,
                      //physics: BouncingScrollPhysics(),
                      reverse: false,
                      itemCount: Get.arguments['listOfSubCategory'].length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          height: 700,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Get.arguments['listOfSubCategory'][index],
                        );
                      },
                      //controller: pageController,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
