import 'package:example/login_page.dart';
import 'package:flutter/material.dart';
import 'package:example/forgot_password.dart';
import 'package:example/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/forgot_password': (context) => ForgotPasswordScreen(),
        '/signup': (context) => SignUpScreen(),
      },
    );
  }
}
