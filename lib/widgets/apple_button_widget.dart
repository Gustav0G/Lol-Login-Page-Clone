import 'package:flutter/material.dart';

class AppleButtonWidget extends StatelessWidget {
  const AppleButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.black,
        ),
        child: Image.asset(
          'assets/images/apple_icon.png',
          width: 50,
          scale: 5,
        ),
      ),
    );
  }
}
