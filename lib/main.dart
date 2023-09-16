import 'package:flutter/material.dart';
import 'Authentication/login.dart';
import 'Authentication/forgotPassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPass(), // Replace with your app's initial screen
    );
  }
}


