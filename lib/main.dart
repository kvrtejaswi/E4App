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
import 'Conversation/callScreen.dart';
import 'Authentication/signup1.dart';
import 'Onboarding/learnerprofile.dart';
import 'Onboarding/guideprofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GuideProfilePage(), 
    );
  }
}


