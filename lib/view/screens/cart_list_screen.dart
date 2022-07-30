import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/basket_counter_controller.dart';
import 'package:tina/controller/product_cart_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';

class CartListScreen extends StatelessWidget {
  final List<CustomProductItem> basketProducts;

  //CartListScreen(this.basketProducts);
  CartListScreen(this.basketProducts);

  @override
  Widget build(BuildContext context) {
    BasketCounterControllerImp basketCounterControllerImp = Get.find();
    if (basketProducts.isEmpty) {
      return Scaffold(
        //appBar: buildAppBar(),
        body: Center(
          child: Text('ليس لديك اي من منتجات بالسلة'),
        ),
      );
    } else {
      return Scaffold(
        appBar: buildAppBar(),
        body: Container(
          child: ListView.builder(
            itemCount: basketProducts.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      //child: Image.asset(Get.arguments["productImg"]),
                    ),
                    Container(
                      child: Text(
                        "Quantity " +
                            basketCounterControllerImp.numOfItems.string,
                        //"Quantity",
                        style: TextStyle(
                            color: AppColor.primaryColor, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              );
            },
            //controller: pageController2,
          ),
        ),
      );
    }

    // return Scaffold(
    //   body: Center(
    //     child: Text("data"),
    //   ),
    // );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColor.primaryColor,
      title: const Text(
        "Shopping basket",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back),
      ),
    );
  }
}
