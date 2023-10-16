import 'package:flutter/material.dart';
import 'package:e4app/theme.dart';
import 'forgotPassword.dart';

void main() => runApp(SignupApp());

class SignupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Set this to false to remove the debug banner
      home: SignupAppPage(),
    );
  }
}

class SignupAppPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignupAppPage> {
  // TextEditingController for the group code and password fields
  TextEditingController groupCodeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Function to handle login button press
  void _login() {
    String groupCode = groupCodeController.text;
    String password = passwordController.text;
    TextEditingController emailController = TextEditingController();
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
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Group Code TextField
                TextField(
                  controller: groupCodeController,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                // Group Code TextField
                TextField(
                  controller: groupCodeController,
                  decoration: InputDecoration(
                    labelText: "Group Code",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                // Email address TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  width: 300.0,
                  height: 51.0,
                  child: ElevatedButton(
                      onPressed: _login,
                      child: Text("Continue"),
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
