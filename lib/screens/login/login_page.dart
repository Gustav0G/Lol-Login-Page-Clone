import 'package:flutter/material.dart';
import 'package:loginlol/screens/login/login_page_mobile.dart';
import 'package:loginlol/screens/login/login_page_web.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      bool isMobile = constraints.maxWidth < 600;
      return Scaffold(
          body: isMobile ? const LoginPageMobile() : const LoginPageWeb());
    }));
  }
}
