import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  final bool? enableButton;

  const LoginButtonWidget({
    Key? key,
    this.enableButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enableButton == false ? null : () {},
      child: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: enableButton == false ? null : const Color(0xffcf3c3f),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
