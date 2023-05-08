import 'package:apphash/view/constants/app_colors.dart';
import 'package:apphash/view/pages/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Hash",
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.black,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.black,
          onPrimary: AppColors.black,
          secondary: AppColors.black,
          onSecondary: AppColors.black,
          error: AppColors.blue,
          onError: AppColors.blue,
          background: AppColors.black,
          onBackground: AppColors.black,
          surface: AppColors.black,
          onSurface: AppColors.black,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
