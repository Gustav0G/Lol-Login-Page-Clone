import 'package:flutter/material.dart';
import 'package:loginlol/widgets/image_logo_widget.dart';

import '../../widgets/login_form_widget.dart';

class LoginPageWeb extends StatefulWidget {
  const LoginPageWeb({Key? key}) : super(key: key);

  @override
  State<LoginPageWeb> createState() => _LoginPageWebState();
}

class _LoginPageWebState extends State<LoginPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 80,
              ),
              ImageLogoWidget(),
              SizedBox(width: 500, child: LoginForm())
            ],
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/theme_image.png'),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
