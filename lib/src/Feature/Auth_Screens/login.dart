import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:doctor_consultation/src/Utils/obscure_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Backgroundsplash(),
        Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      'you can search course, apply course and find scholarship for abroad studies',
                      style: TextStyle(
                          color: Colors.black.withOpacity(.7), fontSize: 10.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 90.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(const Radius.circular(5).w),
                              border: Border.all()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.google,
                                    color: Colors.red,
                                  )),
                              Text(
                                'Google',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10.sp),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 90.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(const Radius.circular(5).w),
                              border: Border.all()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const FaIcon(FontAwesomeIcons.facebook),
                                color: const Color(0x001f3f77).withOpacity(1),
                              ),
                              Text('Facebook',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10.sp))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        TextField(
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.sp),
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.black, fontSize: 10.sp),
                              suffixIcon: const Icon(Icons.check),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(const Radius.circular(5).w))),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const PasswordField(
                          labelText: 'Password',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Buttons(Cwidth: 120.w, text: 'Login', onPressed: () {}),
                  SizedBox(
                    height: 15.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showForgotPasswordDialog(context);
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: const Color(0x000ebe7e).withOpacity(1),
                          fontSize: 10.sp),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Don`t have an account? ',
                        style: TextStyle(color: Colors.black, fontSize: 9.sp)),
                    TextSpan(
                        text: 'Join us',
                        style: TextStyle(
                            color: mainColor.withOpacity(1), fontSize: 9.sp)),
                  ])),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void _showForgotPasswordDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: Text(
              'Forgot password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Enter your email for the verification process. We will send a 4-digit code to your email.',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.7),
                    fontSize: 10.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                TextField(
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 12.sp,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(const Radius.circular(5).w),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              Center(
                  child: Buttons(
                      Cwidth: 100.w,
                      text: 'Continue',
                      onPressed: () {
                        _showDigitsCodeDialog(context);
                      })),
            ],
          ),
        );
      },
    );
  }
}

/////////////////////////////////////////////////////////////

void _showDigitsCodeDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: AlertDialog(
          title: Text(
            'Enter 4 Digits Code',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Enter the 4 digits code that you received on your email.',
                style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(height: 10.h),
              PinCodeTextField(
                  pinTheme: PinTheme(
                      selectedColor: Colors.red,
                      inactiveColor: mainColor.withOpacity(.8),
                      activeColor: Colors.amber),
                  useHapticFeedback: true,
                  textStyle: TextStyle(
                      color: mainColor.withOpacity(1), fontSize: 14.sp),
                  appContext: context,
                  length: 4)
            ],
          ),
          actions: [
            Center(
                child: Buttons(
                    Cwidth: 100.w,
                    text: 'Continue',
                    onPressed: () {
                      _showResetPasswordDialog(context);
                    })),
          ],
        ),
      );
    },
  );
}
///////////////////////////////////////////////////////////////

void _showResetPasswordDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: AlertDialog(
          title: Text(
            'Reset Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Set the new password for your account so you can login and access all the features.',
                style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(height: 10.h),
              const PasswordField(labelText: 'New Password'),
              SizedBox(height: 5.h),
              const PasswordField(labelText: 'Re-enter Password'),
            ],
          ),
          actions: [
            Center(
                child: Buttons(
                    Cwidth: 120.w,
                    fontSize: 12.sp,
                    text: 'Update Password',
                    onPressed: () {})),
          ],
        ),
      );
    },
  );
}
