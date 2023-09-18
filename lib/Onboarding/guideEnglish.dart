import 'package:flutter/material.dart';

void main() {
  runApp(guideEnglish());
}

class guideEnglish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0), // Add spacing
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 14.0, left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 110.0),
                      height: 10,
                      child: LinearProgressIndicator(
                        value: 0.3, // 30% progress
                        minHeight: 6.0,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Which most closely describes my English proficiency:",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(height: 4.0), // Adjust spacing
                          RadioButton(text: "Native"),
                          RadioButton(text: "Proficient (CEFR level C2)"),
                          RadioButton(text: "Advanced (CEFR level C1)"),
                          RadioButton(
                              text: "Upper-Intermediate (CEFR level B2)"),
                          RadioButton(text: "Intermediate (CEFR level B1)"),
                          RadioButton(text: "Elementary (CEFR level A2)"),
                          RadioButton(text: "Beginner (CEFR level A1)"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  width: 344.0,
                  height: 44.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF5BA8D7)),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RadioButton extends StatelessWidget {
  final String text;

  RadioButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add margin between radio buttons
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Row(
        children: [
          Radio(
            value: text,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            groupValue: null, // You can set a group value if needed
            onChanged: (value) {},
          ),
          Text(text),
        ],
      ),
    );
  }
}
