import 'package:flutter/material.dart';
import 'package:loginlol/widgets/image_logo_widget.dart';
import 'package:loginlol/widgets/login_form_widget.dart';

class LoginPageMobile extends StatefulWidget {
  const LoginPageMobile({Key? key}) : super(key: key);

  @override
  State<LoginPageMobile> createState() => _LoginPageMobileState();
}

class _LoginPageMobileState extends State<LoginPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:const  Color(0xFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 80,
          ),
          ImageLogoWidget(),
          SizedBox(width: 500, child: LoginForm())
        ],
      ),
    );
  }
}
