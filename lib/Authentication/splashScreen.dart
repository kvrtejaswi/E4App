import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(),
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Full-screen background image with a tint
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), // Adjust opacity as needed
              BlendMode.srcOver,
            ),
            child: Image.asset(
              'assets/screen_splash.jpg', // Replace with your image asset path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          // Centered content
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              // Text with size 33px and bold
              Container(
                margin: EdgeInsets.only(bottom: 100.0, left: 33.0, right: 33.0),
                child: Text(
                  'Find a guide to help you improve your skills for a better future',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              // Login and Sign Up buttons side by side
              Container(
                margin: EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Login button
                    Container(
                      width: 153,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your login button action here
                        },
                        child: Text('Login'),
                      ),
                    ),

                    // Sign Up button
                    Container(
                      width: 153,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your sign-up button action here
                        },
                        child: Text('Sign Up'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
