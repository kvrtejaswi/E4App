import 'package:flutter/material.dart';
import 'Authentication/login.dart';
import 'Authentication/forgotPassword.dart';
import 'Authentication/recovery.dart';
import 'Session/sessionConfirmation.dart';
import 'Onboarding/learnerEntreprenuer.dart';
import 'Onboarding/guideEntreprenuer.dart';
import 'Onboarding/guideEnglish.dart';
import 'Authentication/splashScreen.dart';
import 'Authentication/IntroScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(), 
    );
  }
}


