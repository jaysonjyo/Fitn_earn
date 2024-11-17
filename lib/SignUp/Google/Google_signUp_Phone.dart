import 'package:fitn_earn/SignIN/Google/SignIN_GoogleCancel.dart';
import 'package:fitn_earn/SignIN/Google/SignIN_GoogleMain.dart';
import 'package:fitn_earn/SignIN/SignIN_Otp.dart';
import 'package:fitn_earn/SignUp/SignUp_Otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class Google_SignUP_Phone extends StatefulWidget {
  const Google_SignUP_Phone({super.key});

  @override
  State<Google_SignUP_Phone> createState() => _Google_SignUP_PhoneState();
}

class _Google_SignUP_PhoneState extends State<Google_SignUP_Phone> {
  TextEditingController phonenumbercontroler = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  bool isError = false;
  String? _errorMessage;
  bool _isValid = false;

  String? _validateInput(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        _errorMessage = 'Wrong Number, Please try again.';
        _isValid = false;
      });
      return '';
    } else if (value.length < 10) {
      setState(() {
        _errorMessage = 'Field cannot be empty';
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
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Color(0xFFE5E5E5),
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w800,
                            ),)
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                          'Please sign up below.',
                          style:GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Color(0xFF737373),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),)
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                          'Enter Mobile Number',
                          style:GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Color(0xFFE5E5E5),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),)
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
                                borderSide: BorderSide.none,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color:  Color(0xFFEB4C60)),
                                  borderRadius: BorderRadius.circular(10.r)),
                              hintText: 'Enter Your Mobile Number',
                              hintStyle:GoogleFonts.lato(
                                textStyle: TextStyle(
                                  color: Color(0xFFA3A3A3),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),)
                          ),
                          validator: _validateInput
                      ),if (_errorMessage != null || _isValid)
                        Row(
                            children: [
                              _isValid? SizedBox():Image.asset("assets/icon.png",width: 16.w,height: 16.h,),
                              SizedBox(width: 4),
                              if (_errorMessage != null)
                                Text(
                                  _errorMessage!,
                                  style: TextStyle(color: Colors.red, fontSize: 12),
                                ),]),
                      SizedBox(height: 16.h,),
                      InkWell(onTap: (){
                        final isValid = _formKey.currentState!.validate();
                        if (isValid
                        ) {
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignUp_Otp()));
                        }
                        _formKey.currentState?.save();

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
                                  'Continue With Mobile',
                                  style: GoogleFonts.lato(
                                    textStyle:TextStyle(
                                      color: Color(0xFFF5F5F5),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),)
                              ),
                            ],
                          ),
                        ),
                      ),


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
