import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Color colorText;
  final Color colorBtn;
  final Color colorIcon;
  final double minWidth;
  final IconData? iconBtn;
  final Function onBtnPressed;
  const RoundedButton({
    Key? key,
    required this.btnText,
    required this.colorText,
    required this.colorBtn,
    required this.onBtnPressed,
    this.colorIcon = Colors.white,
    this.minWidth = 280,
    this.iconBtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Material(
        elevation: 3,
        color: colorBtn,
        borderRadius: BorderRadius.circular(30),
        borderOnForeground: true,
        child: Builder(builder: (context) {
          return MaterialButton(
            onPressed: () {
              onBtnPressed();
            },
            minWidth: minWidth,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  btnText,
                  style: TextStyle(
                    color: colorText,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Icon(iconBtn, color: colorIcon)
              ],
            ),
          );
        }),
      ),
    );
  }
}
