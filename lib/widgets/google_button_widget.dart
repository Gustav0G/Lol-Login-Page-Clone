import 'package:flutter/material.dart';

class GoogleButtonWidget extends StatelessWidget {
  const GoogleButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffECECEC),
          //border: Border.all(color: Color(0xff343434), width: 0.5)),
        ),
        child: Image.asset(
          'assets/images/google-icon.png',
          width: 80,
          scale: 5,
        ),
      ),
    );
  }
}
