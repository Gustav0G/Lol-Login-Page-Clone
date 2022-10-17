import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(),
        onPressed: () {},
        child: const Text(
          'NÃO CONSEGUE INICIAR SESSÃO?',
          style: TextStyle(
            color: Color(0xffa7a7a7),
            //fontFamily: 'LexendDeca',
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ));
  }
}
