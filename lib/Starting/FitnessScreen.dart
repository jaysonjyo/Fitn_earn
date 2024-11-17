
import 'package:fitn_earn/SignIN/SignIN_Phone.dart';
import 'package:fitn_earn/SignUp/SignUp_Phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(flex: 2),
              Column(
                children: [
                  Text(
                    'Start your fitness\ntraining journey',
                    textAlign: TextAlign.center,
                    style:GoogleFonts.lato(
                      textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),)
                  ),
                  SizedBox(height: 20.h),
                  Image.asset(
                    'assets/onboard.png', // Replace with your image path
                    height: 250.h,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              Spacer(flex: 3),
              Column(
                children: [
                  InkWell(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignIN_Phone()));
                  },
                    child: Container(
                      width: 328.w,
                      height: 48.h,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              'Already have an account',
                              style:GoogleFonts.lato(
                                textStyle: TextStyle(
                                  color: Color(0xFFF5F5F5),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),)
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h),
                  InkWell(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignUP_Phone()));
                  },
                    child: Container(
                      width: 328.w,
                      height: 48.h,

                      decoration: ShapeDecoration(
                        gradient: RadialGradient(
                          center: Alignment(1, 0.50),
                          radius: 0.50.r,
                          colors: [
                            Color(0xFFC72D65),
                            Color(0xFFD23760),
                            Color(0xFFD23760)
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              'Get Started',
                              style:GoogleFonts.lato(
                                textStyle: TextStyle(
                                  color: Color(0xFFF5F5F5),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),)
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 30.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
