import 'package:flutter/material.dart';
import 'package:e4app/theme.dart';

void main() => runApp(
  ForgotPass());

class ForgotPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set this to false to remove the debug banner
      home: ForgotPage(),
    );
  }
}

class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
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
                  width: 88.0,
                  height: 44.0,
                  margin: EdgeInsets.only(top: 56.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 32.0, 
                      fontWeight:
                          FontWeight.bold, 
                    ),
                  ),
                ),
                // "Forgot your password?" text
                Container(
                  width: 248.0,
                  height: 38.0,
                  margin: EdgeInsets.only(top: 56.0),
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontSize: 24.0, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                 // "Enter your email address to reset password" text
                Container(
                  width: 274.0,
                  height: 55.0,
                  margin: EdgeInsets.only(top: 0.0),
                  child: Text(
                    "Enter your email address to reset password",
                    style: TextStyle(
                      fontSize: 14.0, 
                    ),
                  ),
                ),

                // Email address TextField
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                // Next Button
                Container(
                  width: 300.0,
                  height: 51.0, 
                  margin: EdgeInsets.only(top: 96.0),
                  child: ElevatedButton(
                      onPressed: _next,
                      child: Text("Next"),
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
