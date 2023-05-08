import 'package:apphash/view/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
    required this.screenSize,
    required this.formKey,
  });

  final Size screenSize;
  final GlobalKey<FormState> formKey;

  static const borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * 0.8,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Processando Dados')),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: const Text(
          "Entrar",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
