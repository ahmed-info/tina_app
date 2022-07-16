// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final String btnText;
  final Color colorText;
  final Color colorBtn;
  final IconData? iconIncrease;
  final IconData? iconDecrease;
  final Function btnIncrease;
  final Function btnDecrease;
  //CartController productCartController = Get.put(CartController());

  CounterButton({
    Key? key,
    required this.btnText,
    required this.colorText,
    required this.colorBtn,
    this.iconIncrease,
    this.iconDecrease,
    required this.btnIncrease,
    required this.btnDecrease,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(top: 30),
      child: Material(
        elevation: 7,
        color: colorBtn,
        borderRadius: BorderRadius.circular(30),
        borderOnForeground: true,
        child: Builder(builder: (context) {
          return Container(
            width: 200,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                    onTap: () {
                      btnIncrease();
                    },
                    onHover: (bool isHover) {},
                    child: Icon(iconIncrease, color: Colors.black)),
                Text(
                  btnText,
                  style: TextStyle(
                    color: colorText,
                    fontSize: 20,
                  ),
                ),
                InkWell(
                    onTap: () {
                      btnDecrease();
                    },
                    child: Icon(iconDecrease, color: Colors.black))
              ],
            ),
          );
        }),
      ),
    );
  }
}
