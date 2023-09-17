import 'package:flutter/material.dart';

class sessionConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0, // Remove the elevation shadow
          backgroundColor:
              Colors.white, // Set the background color to transparent
          leading: Container(
            width: 45.0,
            height: 45.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFD7DEEA), // Set the border color
                width: 1.0, // Set the border width
              ),
              borderRadius:
                  BorderRadius.circular(16.0), // Set the border radius to 4px
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30.0,
              color: Colors.black,
              onPressed: () {
                // Add the logic to navigate back to the previous screen
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               
                // "Session Confirmed" text
                Container(
                  margin: EdgeInsets.only(top: 156.0),
                  child: Text(
                    "Session Confirmed!",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 20.0), // Add spacing between elements

                // Image of the person with a radius of 26
                Container(
                  width: 104.0,
                  height: 104.0,
                  margin: EdgeInsets.only(top: 20.0),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(26.0), // Set the radius to 26
                    child: Image.asset(
                      "assets/profile_image.jpg", // Provide the image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 20.0), // Add spacing between elements

                // "Emily Dawson" text
                Text(
                  "Emily Dawson",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // "CEO in a tech start-up" text
                Container(
                  margin: EdgeInsets.only(
                      top:
                          8.0), // Set the margin top to 8.0 or your desired value
                  child: Text(
                    "CEO in a tech start-up",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Container(
                  width: 320,
                  height: 85,
                  margin: EdgeInsets.only(top: 20),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 320,
                          height: 85,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFD7DEEA)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 277,
                        top: 27,
                        child: Container(
                          width: 32,
                          height: 32,
                          child: Stack(children: []),
                        ),
                      ),
                      Positioned(
                        left: 86,
                        top: 20,
                        child: Container(
                          width: 149,
                          height: 45,
                          margin: EdgeInsets.only(left: 8.0, top: 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    bottom:
                                        26.0), // Margin below the first Text
                                child: Text(
                                  '13 Aug 23',
                                  style: TextStyle(
                                    color: Color(0xFF0E1012),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                  ),
                                ),
                              ),
                              Text(
                                '10:30 AM - 11 AM',
                                style: TextStyle(
                                  color: Color(0xFF0E1012),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  height: 0.08,
                                  letterSpacing: 0.17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 15,
                        child: Container(
                          width: 56,
                          height: 56,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 56,
                                  height: 56,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFE7F2F8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 16,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  child: Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // "Back to Home" button
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: // "Back to Home" button
                        Container(
                      width: 344.0,
                      height: 44.0,
                      margin: EdgeInsets.only(bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF5BA8D7), // Set the background color
                        borderRadius: BorderRadius.circular(
                            4.0), // Optional: Add rounded corners
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Add the logic to navigate back to the home screen
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Back to Home",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors
                                .white, // Change text color to white or your preferred color
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
