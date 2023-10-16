import 'package:flutter/material.dart';

void main() {
  runApp(ConversationScreen());
}

class ConversationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ConversationWidget(),
      ),
    );
  }
}

class ConversationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0x001C6BA4), Color(0xFF1C6BA4)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Emily Dawson",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "00:30:00",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
            children: [
              RoundButton(
                "Button 1",
                width: 40,
                height: 40,
                iconPath: 'assets/icons/micoff.png', // Replace with the actual path to your mic icon
              ),
              RoundButton(
                "Button 2",
                width: 59,
                height: 59,
                iconPath: 'assets/icons/phone.png', // Replace with the actual path to your video call icon
              ),
              RoundButton(
                "Button 3",
                width: 40,
                height: 40,
                iconPath: 'assets/icons/videoicon.png', // Replace with the actual path to your video call icon
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final String iconPath;

  RoundButton(this.text, {this.iconPath = '', this.width = 100, this.height = 100});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: iconPath != null
            ? Image.asset(
                iconPath,
                width: 24, // Adjust the size of the icon as needed
                height: 24,
                color: Colors.blue,
              )
            : Text(
                text,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
