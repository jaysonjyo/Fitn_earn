import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Google_mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MediaQuery for screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFF171717),
        body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, // 5% of screen width for padding
              ),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 0.9, // 90% of screen width
                      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),side: BorderSide(width: 1.w,color: Colors.grey)
                      ),
                        color: Colors.grey[900],

                      ),
                      padding: EdgeInsets.all(screenWidth * 0.05), // Dynamic padding
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Header Section
                          Row(
                            children: [
                              Image.asset("assets/google.png",width: screenWidth * 0.08,height:screenHeight * 0.08  ,),
                              // Icon(Icons.account_circle, color: Colors.white, size: screenWidth * 0.08),
                              SizedBox(width: screenWidth * 0.03),
                              Text(
                                "Sign in with Google",
                                style:GoogleFonts.lato(
                                  textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.05, // Dynamic font size
                                ),)
                              ),
                            ],
                          ),
                          Divider(color: Colors.grey[500], thickness: 1, height: screenHeight * 0.03),

                          // Profile Section
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                              Text(
                                "Sign in to",
                                style:GoogleFonts.lato(
                                  textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.045, // Dynamic font size
                                  fontWeight: FontWeight.bold,
                                ),)
                              ),Text(
                                " fitnearn.com",
                                style:GoogleFonts.lato(
                                  textStyle: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontSize: screenWidth * 0.045, // Dynamic font size
                                  fontWeight: FontWeight.bold,
                                ),)
                              ),
                            ],
                          ), SizedBox(height: screenHeight * 0.01),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                              width:screenWidth * 0.1, // Adjust width as a percentage of screen width
                              height: screenWidth * 0.1, // Keep the height proportional
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/google.png"),
                                  fit: BoxFit.contain,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular( screenWidth * 0.07),
                                ),
                              ),
                            )
                             ,
                              SizedBox(width: screenWidth * 0.04),
                              Text(
                                'Vicky_Nolan20@gmail.com',
                                textAlign: TextAlign.center,
                                style:GoogleFonts.lato(
                                  textStyle: TextStyle(
                                  color: Color(0xFFD4D4D4),
                                  fontSize: screenWidth * 0.04, // Responsive font size (4% of screen width)
                                  fontWeight: FontWeight.w700,
                                  height: screenHeight * 0.0015, // Responsive line height
                                ),)
                              )
                            ],
                          ),

                          SizedBox(height: screenHeight * 0.02),

                          // Description Text
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8, // Adjust width as a percentage of screen width
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'To continue. Google will share your name, email, address, language preference and profile picture with fitnearn.com. Before using this app, you can review fitnearn.com’s ',
                                    style: GoogleFonts.lato(
                                      textStyle:TextStyle(
                                      color: Color(0xFFD4D4D4),
                                      fontSize: screenWidth * 0.04, // Responsive font size
                                      fontWeight: FontWeight.w700,
                                      height: 1.5.h, // Adjusted for better readability
                                    ),)
                                  ),
                                  TextSpan(
                                    text: 'privacy policy',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                      color: Color(0xFF818CF8),
                                      fontSize:screenWidth * 0.04, // Responsive font size
                                      fontWeight: FontWeight.w700,
                                      height: 1.5.h,
                                    ),)
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                      color: Color(0xFFD4D4D4),
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5.h,
                                    ),)
                                  ),
                                  TextSpan(
                                    text: 'Terms of services',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                      color: Color(0xFF818CF8),
                                      fontSize: screenWidth * 0.04, // Responsive font size

                                      fontWeight: FontWeight.w700,
                                      height: 1.5.h,
                                    ),)
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.03),
                          SizedBox(
                            width: screenWidth * 0.8, // 80% of screen width
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'You can manage Sign up with Google in your ',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                      color: Color(0xFFD4D4D4),
                                      fontSize: screenWidth * 0.042, // Responsive font size
                                      fontWeight: FontWeight.w700,
                                      )
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Google Account',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                      color: Color(0xFF818CF8),
                                      fontSize: screenWidth * 0.042, // Responsive font size
                                      fontWeight: FontWeight.w700,
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          // Buttons Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[800],
                                  foregroundColor: Colors.white,
                                  minimumSize: Size(screenWidth * 0.3, screenHeight * 0.06), // Button size
                                ),
                                child: Text(
                                  "Cancel",
                                  style:GoogleFonts.lato(
                                    textStyle: TextStyle(fontSize: screenWidth * 0.04)), // Button text size
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(screenWidth * 0.3, screenHeight * 0.06), // Button size
                                ),
                                child: Text(
                                  "Continue",
                                  style: GoogleFonts.lato(
                                    textStyle:TextStyle(fontSize: screenWidth * 0.04), // Button text size
                                ),)
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),



                          // Footer Section

                           SizedBox(height: screenHeight * 0.01),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "English (United Kingdom)",
                          style:GoogleFonts.lato(
                            textStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: screenWidth * 0.035,
                          ),)
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Icon(Icons.arrow_drop_down, color: Colors.grey, size: screenWidth * 0.05),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Help",
                          style:GoogleFonts.lato(
                            textStyle: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.035),
                          )),SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Privacy",
                          style:GoogleFonts.lato(
                            textStyle: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.035),
                          )),SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Terms",
                          style:GoogleFonts.lato(
                            textStyle: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.035),
                        ))
                      ],
                    ),
                  ],
                ),

              ),
            ),
    ));}
}