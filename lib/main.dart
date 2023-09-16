import 'package:flutter/material.dart';
import 'Authentication/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginApp(), // Replace with your app's initial screen
    );
  }
}


