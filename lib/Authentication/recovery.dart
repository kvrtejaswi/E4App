import 'package:flutter/material.dart';
import 'package:e4app/theme.dart';

void main() => runApp(Recovery());

class Recovery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Set this to false to remove the debug banner
      home: RecoveryPage(),
    );
  }
}

class RecoveryPage extends StatefulWidget {
  @override
  _RecoveryPageState createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  // TextEditingController for the group code and password fields
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Function to handle login button press
  void _next() {
    String emailCode = emailController.text;
    // For demonstration purposes, we'll just print the input values
    print("Email Address: $emailCode");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Padding(
          padding: EdgeInsets.all(28.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // "Login" text
                Container(
                  width: null,
                  height: 44.0,
                  margin: EdgeInsets.only(top: 56.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // "Forgot your password?" text
                Container(
                  width: null,
                  height: 38.0,
                  margin: EdgeInsets.only(top: 56.0),
                  child: Text(
                    "Recovery Email Sent!",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                // "Please check your email for next steps to reset your password." text
                Container(
                  width: null,
                  height: 55.0,
                  margin: EdgeInsets.only(top: 0.0),
                  child: Center(
                    child: Text(
                      "Please check your email for next steps to reset your password.",
                      textAlign: TextAlign
                          .center, // Center-align both horizontally and vertically
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16.0),
                // Back to Login Button
                Container(
                  width: 300.0,
                  height: 51.0,
                  margin: EdgeInsets.only(top: 96.0),
                  child: ElevatedButton(
                      onPressed: _next,
                      child: Text("Back to Login"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF5BA8D7),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
