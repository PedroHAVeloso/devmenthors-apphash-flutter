import 'package:apphash/view/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.screenSize,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });
  final Size screenSize;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  static const borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * 0.8,
      child: TextFormField(
        controller: controller,
        validator: (String? data) {
          if (data!.isEmpty) {
            return "Campo obrigatório";
          }
          return null;
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.darkGrey,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.white,
            fontSize: 18.0,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 25.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.0),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.0),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(width: 1.0, color: AppColors.blue),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(width: 1.0, color: AppColors.blue),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
