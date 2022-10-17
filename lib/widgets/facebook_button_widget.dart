import 'package:flutter/material.dart';

class FacebookButtonWidget extends StatelessWidget {
  const FacebookButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: const Color(0xff1B77F3),
        ),
        child: Image.asset(
          'assets/images/facebook-icon.png',
          width: 50,
          scale: 5,
        ),
      ),
    );
  }
}
