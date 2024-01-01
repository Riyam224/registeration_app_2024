import 'package:flutter/material.dart';
import 'package:user_app/views/auth/login_screen.dart';
import 'package:user_app/views/splash_View/splash_view.dart';

void main() {
  runApp(const UserApp());
}

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const SplashView());
  }
}
