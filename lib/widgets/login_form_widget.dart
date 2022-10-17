import 'package:flutter/material.dart';
import 'package:loginlol/widgets/apple_button_widget.dart';
import 'package:loginlol/widgets/checkbox_widget.dart';
import 'package:loginlol/widgets/create_account_button_widget.dart';
import 'package:loginlol/widgets/facebook_button_widget.dart';
import 'package:loginlol/widgets/forgot_password_widget.dart';
import 'package:loginlol/widgets/google_button_widget.dart';
import 'package:loginlol/widgets/login_button_widget.dart';
import 'package:loginlol/widgets/text_form_field_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Fazer login',
            style: TextStyle(
                fontSize: 28,
                fontFamily: 'LexendDeca',
                fontWeight: FontWeight.bold,
                color: Color(0xff343434)),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
              child: Column(
            children: [
              TextFormFieldWidget(
                label: 'NOME DE USUÁRIO',
                controller: userController,
                obscuredText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                label: 'SENHA',
                controller: passwordController,
                obscuredText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FacebookButtonWidget(),
                  GoogleButtonWidget(),
                  AppleButtonWidget()
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const CheckBoxWidget(),
              const SizedBox(
                height: 250,
              ),
              const LoginButtonWidget(),
              const SizedBox(
                height: 50,
              ),
              const ForgotPasswordWidget(),
              const CreateAccountButtonWidget(),
            ],
          ))
        ],
      ),
    );
  }
}




/*
  --white: #FFF;
  --whitesmoke: #F9F9F9;
  --light-grey: #ECECEC;
  --grey: #C4C4C4;
  --medium-grey: #A7A7A7;
  --deep-grey: #343434;
  --black: #000000;
  --blue: #1B77F3;
  --red: #CF3C3F;
*/