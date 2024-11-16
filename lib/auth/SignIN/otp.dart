import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Starting/onboard.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController otpcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 152.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: 360.w,

                height: 581.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 21.h,
                    ),
                    SizedBox(
                      width: 48.w,
                      height: 48.h,

                      child:Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          "assets/Logo.png",
                          fit: BoxFit.contain,
                        ),
                      ),),
                    SizedBox(
                      height: 21.h,
                    ),
                    Text(
                      'Welcome to FitnEarn',
                      style: TextStyle(
                        color: Color(0xFFE5E5E5),
                        fontSize: 32.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'Enter the 4 digit code shared on your phone',
                      style: TextStyle(
                        color: Color(0xFF737373),
                        fontSize: 16.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Enter OTP',
                      style: TextStyle(
                        color: Color(0xFFE5E5E5),
                        fontSize: 18.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OtpTextField(
                          filled: true,
                          fillColor: Color(0xFF262626), // Base color for OTP fields
                          fieldWidth: 48.w,
                          fieldHeight: 48.h,
                          borderRadius: BorderRadius.circular(10.r),
                          borderWidth: 1.5.w,
                          numberOfFields: 4,
                          enabledBorderColor: Colors.transparent, // Transparent border when not focused
                          focusedBorderColor: Color(0xFFEB4C60), // Color when the field is focused
                          showFieldAsBox: true,
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          onCodeChanged: (String code) {
                            // handle validation or checks here
                          },
                          onSubmit: (String verificationCode) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Verification Code"),
                                  content: Text('Code entered is $verificationCode'),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),


                    // OtpTextField(
                    //   filled: true,
                    //     fillColor: Color(0xFF262626), // Set fillColor to transparent to see gradient
                    //     fieldWidth: 48.w,
                    //     fieldHeight: 48.h,
                    //     borderRadius: BorderRadius.circular(10.r),
                    //     borderWidth: 1.5.w,
                    //     numberOfFields: 5,
                    //     enabledBorderColor:Colors.transparent ,
                    //     focusedBorderColor:  Color(0xFFEB4C60),
                    //    // borderColor: Color(0xFFEB4C60),
                    //     showFieldAsBox: true,
                    //     onCodeChanged: (String code) {
                    //       // handle validation or checks here
                    //     },
                    //     onSubmit: (String verificationCode) {
                    //       showDialog(
                    //         context: context,
                    //         builder: (context) {
                    //           return AlertDialog(
                    //             title: Text("Verification Code"),
                    //             content: Text('Code entered is $verificationCode'),
                    //           );
                    //         },
                    //       );
                    //     }, // end onSubmit
                    //   ),



                    // TextFormField(
                    //   cursorColor: Colors.white,
                    //   controller: otpcontroler,
                    //   style: TextStyle(
                    //       color: Colors.white, decorationThickness: 0.sp),
                    //   textAlignVertical: TextAlignVertical.center,
                    //   decoration: InputDecoration(
                    //     contentPadding: EdgeInsets.symmetric(
                    //         vertical: 10.h, horizontal: 25.w),
                    //     filled: true,
                    //     fillColor:
                    //     Colors.white.withOpacity(0.18000000715255737),
                    //     border: OutlineInputBorder(
                    //         borderSide: BorderSide.none,
                    //         borderRadius: BorderRadius.circular(10.r)),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.r),
                    //       borderSide: BorderSide.none,
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.r),
                    //       borderSide: BorderSide.none,
                    //     ),
                    //     errorBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(color:  Color(0xFFEB4C60)),
                    //         borderRadius: BorderRadius.circular(10.r)),
                    //     hintText: 'Enter Your Mobile Number',
                    //     hintStyle: TextStyle(
                    //       color: Color(0xFFA3A3A3),
                    //       fontSize: 16.sp,
                    //       fontFamily: 'Lato',
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //   ),
                    //   validator: (value) {
                    //     if (value!.isEmpty || value.length < 10) {
                    //       return 'Wrong Number, Please try again.';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    SizedBox(height: 16.h,),
                    InkWell(onTap: (){
                      // final isValid = _formKey.currentState!.validate();
                      // if (isValid
                      // ) {
                     //   Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Arrowpage()));
                      // }
                      // _formKey.currentState?.save();

                    },
                      child: Container(
                        width: 328.w,
                        height: 48.h,
                        // padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 8),
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
                              'Continue With Mobile',
                              style: TextStyle(
                                color: Color(0xFFF5F5F5),
                                fontSize: 18.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children:
                        [
                          Container(
                            width: 116.w,
                            height: 2.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFD4D4D4),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.r)),
                            ),
                          ),
                          SizedBox(width: 16.w,),
                          Text(
                            'OR',
                            style: TextStyle(
                              color: Color(0xFFD4D4D4),
                              fontSize: 16.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 16.w,),
                          Container(
                            width: 116.w,
                            height: 2.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFFD4D4D4),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.r)),
                            ),
                          ),
                        ],
                      ),
                    ),SizedBox(height: 16.h,),
                    Container(
                      width: 328.w,
                      height: 48.h,
                      //    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2.w, color: Color(0xFFE5E5E5)),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24.w,
                            height: 24.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: FlutterLogo(),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                              color: Color(0xFFD4D4D4),
                              fontSize: 18.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                              height: 0.08.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    Container(
                      width: 328.w,

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Don’t have an account ? ',
                            style: TextStyle(
                              color: Color(0xFFD4D4D4),
                              fontSize: 16.sp,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFFE5E5E5),
                                  fontSize: 16.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              Container(
                                height: 1.5.h,
                                color: Color(0xFFE5E5E5),
                                width: 50.w,
                              ),
                            ],
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
