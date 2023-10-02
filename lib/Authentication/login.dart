import 'package:flutter/material.dart';
import 'package:e4app/theme.dart';
import 'forgotPassword.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Set this to false to remove the debug banner
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController for the group code and password fields
  TextEditingController groupCodeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Function to handle login button press
  void _login() {
    String groupCode = groupCodeController.text;
    String password = passwordController.text;

    // Add authentication logic here
    // For demonstration purposes, we'll just print the input values
    print("Group Code: $groupCode");
    print("Password: $password");
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // "Welcome back!" text
                Container(
                  width: 176.0,
                  height: 33.0,
                  margin: EdgeInsets.only(bottom: 96.0),
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),

                // Group Code TextField
                TextField(
                  controller: groupCodeController,
                  decoration: InputDecoration(
                    labelText: "Group Code",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),

                // Password TextField
                TextField(
                  controller: passwordController,
                  obscureText: true, // Hide password text
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => ForgotPass(),
                      ));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                // Login Button
                Container(
                  width: 300.0,
                  height: 51.0,
                  child: ElevatedButton(
                      onPressed: _login,
                      child: Text("Login"),
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
