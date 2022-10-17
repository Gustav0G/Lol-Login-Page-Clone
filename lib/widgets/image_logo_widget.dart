import 'package:flutter/material.dart';

class ImageLogoWidget extends StatelessWidget {
  const ImageLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 200,
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
