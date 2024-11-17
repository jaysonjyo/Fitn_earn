import 'package:fitn_earn/SignIN/Google/Google_signIN_Phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIN_GoogleSecondPage extends StatefulWidget {
  @override
  _SignIN_GoogleSecondPageState createState() => _SignIN_GoogleSecondPageState();
}

class _SignIN_GoogleSecondPageState extends State<SignIN_GoogleSecondPage> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = true;
  bool isChecked4 = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            children: [
              SizedBox(height: 90.h,),
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFFA3A3A3)),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 24.w,
                            height: 24.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child:Image.asset("assets/google.png")
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Sign in with Google',
                          style:GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Color(0xFFF5F5F5),
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700,
                              )
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
                      child: Divider(thickness: 1.sp,height: 1,color: Colors.grey[600],),
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Fitearn.com wants access to  your Google Account',
                        textAlign: TextAlign.center,
                        style:GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Color(0xFFD4D4D4).withOpacity(0.50000000298023224),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24.w,
                          height: 24.h,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/Avatar.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.r),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                            'Vicky_Nolan20@gmail.com',
                            textAlign: TextAlign.center,
                            style:GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Color(0xFFD4D4D4),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),)
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Select what fitearn.com can access',
                        textAlign: TextAlign.center,
                        style:GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Color(0xFFD4D4D4).withOpacity(0.50000000298023224),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        children: [
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 32.w,
                                  height: 32.h,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child:Icon(Icons.account_circle,color: Colors.white,)
                              ),
                              SizedBox(width: 4.w),
                              Expanded(
                                child: Text(
                                    'Associate you with your personal info  on Google',
                                    style:GoogleFonts.lato(
                                        textStyle:GoogleFonts.lato(
                                          textStyle: TextStyle(
                                            color: Color(0xFFD4D4D4),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                          ),))
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Checkbox(checkColor: Colors.black,activeColor: Colors.white,
                                      value: isChecked1,
                                      side: BorderSide(color: Colors.white, width: 2.0.w),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked1 = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 32.w,
                                  height: 32.h,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child:Icon(Icons.account_circle,color: Colors.white,)
                              ),
                              SizedBox(width: 4.w),
                              Expanded(
                                child: Text(
                                    "See your personal info, including any personal info you've made publicly available",
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Color(0xFFD4D4D4),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),)
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Checkbox(checkColor: Colors.black,activeColor: Colors.white,
                                      value: isChecked2,
                                      side: BorderSide(color: Colors.white, width: 2.0.w),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked2 = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 32.w,
                                  height: 32.h,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child:Icon(Icons.account_circle,color: Colors.white,)
                              ),
                              SizedBox(width: 4.w),
                              Expanded(
                                child: Text(
                                    "See and download your exact date of birth. Learn more.",
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Color(0xFFD4D4D4),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),)
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Checkbox(checkColor: Colors.black,activeColor: Colors.white,
                                      value: isChecked3,
                                      side: BorderSide(color: Colors.white, width: 2.0),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked3 = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 32.w,
                                  height: 32.h,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child:Icon(Icons.person_pin,color: Colors.white,)
                              ),
                              SizedBox(width: 4.w),
                              Expanded(
                                child: Text(
                                    "See and download your exact date of birth. Learn more.",
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Color(0xFFD4D4D4),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),)
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Checkbox(checkColor: Colors.black,activeColor: Colors.white,
                                      value: isChecked4,
                                      side: BorderSide(color: Colors.white, width: 2.0.w),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked4 = value ?? false;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16.h),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: 'You may be sharing sensitive info with this site or app. You can always see or remove access in your ',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.60000298023224),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),)
                                ),
                                TextSpan(
                                    text: 'Google Account.',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Color(0xFFD4D4D4),
                                        fontSize: 16.sp, fontWeight: FontWeight.w700,
                                      ),)
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Text.rich(textAlign: TextAlign.start,
                            TextSpan(
                              children: [
                                TextSpan(
                                    text:'Learn how Google helps you ',
                                    style: GoogleFonts.lato(
                                      textStyle:TextStyle(
                                        color: Colors.white.withOpacity(0.60000298023224),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),)
                                ),
                                TextSpan(
                                    text: 'share data safely,',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Color(0xFFD4D4D4),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),)
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "See Fitnearn.com's ",
                                  style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.60000298023224),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      )
                                  ),
                                ),
                                TextSpan(
                                    text: 'privacy policy',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Color(0xFFD4D4D4),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),)
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.60000298023224),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      )
                                  ),
                                ),
                                TextSpan(
                                    text: 'Terms of Service',
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        color: Color(0xFFD4D4D4),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),)
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[800],
                                    foregroundColor: Colors.white,
                                    minimumSize: Size(128.w, 43.h), // Button size
                                  ),
                                  child: Text(
                                    "Cancel",
                                    style: GoogleFonts.lato(
                                      textStyle:TextStyle(fontSize: 18.sp), // Button text size
                                    ),)
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Google_SignIN_Phone()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    minimumSize: Size(128.w, 43.h), // Button size
                                  ),
                                  child: Text(
                                    "Continue",
                                    style:GoogleFonts.lato(
                                      textStyle: TextStyle(fontSize: 18.sp), // Button text size
                                    ),)
                              ),
                            ],
                          ),  SizedBox(height: 20.h,),
                        ],
                      ),
                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}