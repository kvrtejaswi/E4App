import 'package:flutter/material.dart';

void main() {
  runApp(guideEntreprenuer());
}

class guideEntreprenuer extends StatelessWidget {
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
                      margin: EdgeInsets.only(top: 70.0),
                      height: 10,
                      child: LinearProgressIndicator(
                        value: 0.3, // 30% progress
                        minHeight: 6.0,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.0, left: 18.0, bottom: 14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Which most closely describes my English proficiency:",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        
                          RadioButton(text: "Agribusiness"),
                          RadioButton(text: "Food and Beverage"),
                          RadioButton(text: "Clothing and Textiles"),
                          RadioButton(text: "Beauty and Personal Care"),
                          RadioButton(text: "Crafts and Artisans"),
                          RadioButton(text: "Retail and Trade"),
                          RadioButton(text: "Education and Skill Development"),
                          RadioButton(text: "Technology and IT Services"),
                          RadioButton(text: "Creative Content and Media"),
                          RadioButton(text: "Tourism and Hospitality"),
                          RadioButton(text: "Art and Cultural Experiences"),
                          RadioButton(text: "Healthcare and Wellness"),
                          RadioButton(text: "Green and Sustainable Businesses"),
                          RadioButton(text: "Recycling and Upcycling"),
                          RadioButton(text: "Home-based Servicess"),
                          RadioButton(text: "Transportation and Logistics"),
                          RadioButton(text: "Community Development Projects"),
                      
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
      padding: EdgeInsets.all(0),
      child: Row(
        children: [
          Radio(
            value: text,
            visualDensity: VisualDensity.compact,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            groupValue: null, // You can set a group value if needed
            onChanged: (value) {},
          ),
          Text(text),
        ],
      ),
    );
  }
}
