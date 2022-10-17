import 'package:flutter/material.dart';

class CreateAccountButtonWidget extends StatelessWidget {
  const CreateAccountButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: const Text(
          'CRIAR CONTA',
          style: TextStyle(
              color: Color(0xffa7a7a7),
              //fontFamily: 'LexendDeca',
              fontSize: 13,
              fontWeight: FontWeight.w700),
        ));
  }
}
