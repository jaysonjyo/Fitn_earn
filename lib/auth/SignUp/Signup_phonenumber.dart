import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Starting/onboard.dart';

class Signup_Phonenumber extends StatefulWidget {
  const Signup_Phonenumber({super.key});

  @override
  State<Signup_Phonenumber> createState() => _Signup_PhonenumberState();
}

class _Signup_PhonenumberState extends State<Signup_Phonenumber> {
  TextEditingController phonenumbercontroler = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  String? _errorMessage;
  bool _isValid = false;

  String? _validateInput(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        _errorMessage = 'Field cannot be empty';
        _isValid = false;
      });
      return '';
    } else if (value.length < 10) {
      setState(() {
        _errorMessage = 'Wrong Number, Please try again.';
        _isValid = false;
      });
      return '';
    }
    setState(() {
      _errorMessage = null;
      _isValid = true;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                        'Please sign up below.',
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
                        'Enter Mobile Number',
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
                      TextFormField(
                        cursorColor: Colors.white,
                        controller: phonenumbercontroler,
                        style: TextStyle(
                            color: Colors.white, decorationThickness: 0.sp),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 25.w),
                          filled: true,
                          fillColor:
                              Colors.white.withOpacity(0.18000000715255737),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.r)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide:BorderSide(color:  Color(0xFFEB4C60)),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:  Color(0xFFEB4C60)),
                              borderRadius: BorderRadius.circular(10.r)),
                          hintText: 'Enter Your Mobile Number',
                          hintStyle: TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontSize: 16.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        validator:_validateInput
                      ),if (_errorMessage != null || _isValid)
                        Row(
                            children: [
                              _isValid? Icon(
                                Icons.check_circle ,
                                color: _isValid ? Colors.green : Colors.red,
                              ):Image.asset("assets/icon.png",width: 16.w,height: 16.h,),
                              SizedBox(width: 4),
                              if (_errorMessage != null)
                                Text(
                                  _errorMessage!,
                                  style: TextStyle(color: Colors.red, fontSize: 12),
                                ),]),
                       SizedBox(height: 8.h,),

                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'By Signing Up, I Accept ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: TextStyle(
                                color: Color(0xFFEC4E4E),
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: ' & ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy policy',
                              style: TextStyle(
                                color: Color(0xFFEC4E4E),
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,

                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h,),
                      InkWell(onTap: (){
                        final isValid = _formKey.currentState!.validate();
                        if (isValid
                        ) {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Arrowpage()));
                        }
                        _formKey.currentState?.save();

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
                              'Already have an account ?',
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
                                  'Login',
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
      ),
    );
  }
}
