import 'package:flutter/material.dart';
import 'Authentication/login.dart';
import 'Authentication/forgotPassword.dart';
import 'Authentication/recovery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Recovery(), // Replace with your app's initial screen
    );
  }
}


