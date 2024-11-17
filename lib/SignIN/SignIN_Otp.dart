import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIN_Otp extends StatefulWidget {
  @override
  _SignIN_OtpState createState() => _SignIN_OtpState();
}

class _SignIN_OtpState extends State<SignIN_Otp> {
  final _formKey = GlobalKey<FormState>();
  List<String> otpFields = ["", "", "", ""]; // Store each OTP digit
  bool _isValid = true; // Tracks whether the input is valid
  String? _errorMessage; // Holds error message

  // FocusNodes for each OTP field
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  void _validateOTP() {
    // Check if all OTP fields are filled
    if (otpFields.any((element) => element.isEmpty)) {
      setState(() {
        _isValid = false;
        _errorMessage = "Wrong Number, Please try again.";
      });
    } else {
      setState(() {
        _isValid = true;
        _errorMessage = null;
      });
      print("OTP Entered: ${otpFields.join()}");
      // Proceed with OTP verification logic
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                SizedBox(height: 173.h,),
                CircleAvatar(
                  radius: 40.r,
                  backgroundImage:
                  AssetImage('assets/Logo.png',), // Add your logo path
                ),
                SizedBox(height: 20.h),
                // Title and subtitle
                Text(
                  'Welcome to FitnEarn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Enter the 4-digit code sent to your phone',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                    'Enter OTP',
                    style:GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Color(0xFFE5E5E5),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),)
                ),
                SizedBox(height: 30.h),
                // OTP Input Fields
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return SizedBox(
                        width: 50.w,
                        child: TextFormField(
                          focusNode: _focusNodes[index],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18.sp),
                          maxLength: 1, // Each field accepts only 1 digit
                          decoration: InputDecoration(
                            counterText: '',
                            filled: true,
                            fillColor: Color(0xFF262626),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.5.w,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                color: Color(0xFFEB4C60),
                                width: 1.5.w,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              otpFields[index] = value;
            
                              // Move focus to the next field
                              if (index < 3) {
                                _focusNodes[index + 1].requestFocus();
                              } else {
                                _focusNodes[index].unfocus(); // Last field
                              }
                            } else if (value.isEmpty && index > 0) {
                              // Move focus to the previous field if empty
                              _focusNodes[index - 1].requestFocus();
                            }
                            setState(() {});
                          },
                        ),
                      );
                    }).expand((widget) => [widget, SizedBox(width: 35.w)]).toList()
                      ..removeLast(),
                  ),
                ),
                SizedBox(height: 10.h),
                // Error Message and Icon
                if (!_isValid)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 14.w,),
                      Image.asset(
                        "assets/icon.png", // Replace with your error icon path
                        width: 16.w,
                        height: 16.h,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        _errorMessage ?? '',
                        style: TextStyle(color: Colors.red, fontSize: 12.sp),
                      ),
                    ],
                  ),
                SizedBox(height: 40.h),
                // Buttons
                Column(
                  children: [
                    InkWell(onTap:_validateOTP,child: Container(
                      width: 328.w,
                      height: 48.h,
                      padding:  EdgeInsets.symmetric(horizontal: 72.w, vertical: 8.h),
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
                              'Submit OTP',
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
                      Navigator.of(context).pop();
                    },
                      child: Container(
                        width: 328.w,
                        height: 48.h,
                        padding:  EdgeInsets.symmetric(horizontal: 72.w, vertical: 8.h),
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
                                'Back',
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
      ),
    );
  }
}
