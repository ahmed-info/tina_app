// ignore_for_file: prefer_const_constructors_in_immutables, file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class AvatarAndAlert extends StatefulWidget {
  AvatarAndAlert({Key? key}) : super(key: key);

  @override
  State<AvatarAndAlert> createState() => _AvatarAndAlertState();
}

class _AvatarAndAlertState extends State<AvatarAndAlert> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/logoTina.jpg',
                  ),
                )),
          ),
          Container(
            child: const Text(
              'Tina Shop',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff025c1f)),
            ),
          ),
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.notifications_none,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 20),
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  '1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
