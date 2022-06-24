import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColor.primaryColor,
        title: Text('Success', style: Theme.of(context).textTheme.bodyText1),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Icon(Icons.check_circle_outline,
                  size: 200, color: AppColor.primaryColor),
            ),
            Text('data data data'),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: 'Go To Login',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
