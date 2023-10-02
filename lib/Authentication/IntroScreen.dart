import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() {
  runApp(IntroScreen());
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreenPage(),
    );
  }
}

class IntroScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to introduce a delay of 3 seconds (adjust as needed)
    Future.delayed(Duration(seconds: 3), () {
      // After the delay, navigate to the SplashScreen
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => SplashScreen(), // Replace with your SplashScreen class
      ));
    });

    return Scaffold(
      body: FractionallySizedBox(
        widthFactor: 1.0,
        heightFactor: 1.0,
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 66),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFFF9FCFF), Color(0xFF5BA8D7)],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 172.30,
                height: 172.29,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 2,
                      child: Container(
                        width: 170,
                        height: 150,
                        decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36.71),
              SizedBox(
                width: 228,
                height: 35,
                child: Text(
                  'ASU SunSPEAK',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
