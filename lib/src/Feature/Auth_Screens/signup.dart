import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Feature/Auth_Screens/login.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:doctor_consultation/src/Utils/obscure_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool fill = false;
  bool obscure = false;

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
                    'Join us to start searching',
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
                      style: TextStyle(color: Colors.black, fontSize: 10.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ///////////////////////////
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
                  //////////////////
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
                              labelText: 'Name',
                              labelStyle: TextStyle(fontSize: 10.sp),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(const Radius.circular(5).w))),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextField(
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.sp),
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(fontSize: 10.sp),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(const Radius.circular(5).w))),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const PasswordField(
                          labelText: 'Password',
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              fill = !fill;
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 14.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(const Radius.circular(10).w),
                                    color: fill
                                        ? mainColor.withOpacity(1)
                                        : Colors.grey.withOpacity(.5)),
                              ),
                              SizedBox(
                                width: 3.h,
                              ),
                              Text(
                                'I agree with the Terms of Service & Privacy Policy',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 9.sp),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  Buttons(Cwidth: 120.w, text: 'Sign up', onPressed: () {}),
                  SizedBox(
                    height: 10.h,
                  ),

                  InkWell(
                    onTap: () {
                      navPush(context, const Login());
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Have an account? ',
                          style:
                              TextStyle(color: Colors.black, fontSize: 9.sp)),
                      TextSpan(
                          text: 'Log in',
                          style: TextStyle(
                              color: mainColor.withOpacity(1), fontSize: 9.sp)),
                    ])),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
