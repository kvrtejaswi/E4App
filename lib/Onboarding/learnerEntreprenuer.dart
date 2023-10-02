import 'package:flutter/material.dart';

void main() {
  runApp(learnerEntreprenuer());
}

class learnerEntreprenuer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // App bar is null
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100, left: 20.0, right: 20.0),
              width: double.infinity,
              height: 10,
              child: LinearProgressIndicator(
                value: 0.3, // 30% progress
                backgroundColor: Colors.grey, // Background color of the progress bar
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Progress bar color
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Text("Upload Business idea or Business model"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xD9D9D91F), // Background color
                onPrimary: Colors.black, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Button radius
                ),
                side: BorderSide(
                  color: Color(0xFF8E9093), // Border color
                ),
              ),
              child: SizedBox(
                width: 70,
                height: 26,
                child: Center(
                  child: Text("Upload"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                "I understand that I should never ask my coach for financial assistance including for personal or business-related reasons:",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xD9D9D91F), // Background color
                onPrimary: Colors.black, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Button radius
                ),
                side: BorderSide(
                  color: Color(0xFF8E9093), // Border color
                ),
              ),
              child: SizedBox(
                width: 70,
                height: 26,
                child: Center(
                  child: Text("Yes"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
