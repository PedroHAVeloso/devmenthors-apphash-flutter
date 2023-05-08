import 'package:apphash/view/constants/app_colors.dart';
import 'package:apphash/view/pages/login/widgets/login_button.dart';
import 'package:apphash/view/pages/login/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController(),
      senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: screenSize.width * 0.75,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Text(
                        "Entrar",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      TextFieldWidget(
                        screenSize: screenSize,
                        hintText: "E-mail",
                        obscureText: false,
                        controller: email,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldWidget(
                        screenSize: screenSize,
                        hintText: "Senha",
                        obscureText: true,
                        controller: senha,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      LoginButtonWidget(
                        screenSize: screenSize,
                        formKey: _formKey,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
