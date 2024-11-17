import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Google_cancelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF171717),
        body: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0.sp), // 20.sp for responsive padding
              child: Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0.sp), // Responsive padding inside the container
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r), // Responsive border radius
                          side: BorderSide(width: 1.w, color: Colors.grey), // Responsive border width
                        ),
                        color: Colors.grey[900],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Google Logo
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/google.png',
                                width: 40.w, // Responsive width for the Google logo
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                'Sign up with Google',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp, // Responsive font size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h), // Responsive vertical spacing

                          // Choose an account text
                          Text(
                            'Choose an account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp, // Responsive font size
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'to continue to FitnEarn.com',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14.sp, // Responsive font size
                            ),
                          ),
                          SizedBox(height: 20.h),

                          // User Account
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://i.pravatar.cc/150?img=1'), // Sample avatar
                            ),
                            title: Text(
                              'Vicky',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp, // Responsive font size
                              ),
                            ),
                            subtitle: Text(
                              'Vicky_Nolan20@gmail.com',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14.sp, // Responsive font size
                              ),
                            ),
                          ),
                          Divider(color: Colors.white70),

                          // Use another account option
                          ListTile(
                            leading: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                              size: 24.sp, // Responsive icon size
                            ),
                            title: Text(
                              'Use another account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp, // Responsive font size
                              ),
                            ),
                          ),
                          Divider(color: Colors.white70),

                          // Footer text
                          SizedBox(
                            width: 288.w,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'To continue. Google will share your name, email, address, language preference and profile picture with fitnearn.com. Before using this app, you can review fitnearn.com’s ',
                                    style: TextStyle(
                                      color: Color(0xFFD4D4D4),
                                      fontSize: 16.sp,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'privacy policy',
                                    style: TextStyle(
                                      color: Color(0xFF818CF8),
                                      fontSize: 16.sp,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                      color: Color(0xFFD4D4D4),
                                      fontSize: 16.sp,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms of services',
                                    style: TextStyle(
                                      color: Color(0xFF818CF8),
                                      fontSize: 16.sp,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [

                              Text(
                                'English (United Kingdom)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFD4D4D4),
                                  fontSize: 12.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                               SizedBox(width: 10.w),
                        Icon(Icons.arrow_drop_down, color: Colors.grey, size: 24.sp),


                         SizedBox(width: 10.w),
                          Text(
                            'Help ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFD4D4D4),
                              fontSize: 12.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                           SizedBox(width: 10.w),
                          Text(
                            'Privacy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFD4D4D4),
                              fontSize: 12.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                           SizedBox(width: 10.w),
                          Text(
                            'Terms',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFD4D4D4),
                              fontSize: 12.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,

                            ),
                          ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
    ));}
}