import 'dart:async';
import 'dart:math';
import 'package:doctor_consultation/Custom_Widgets/Onboarding_screen_Button/button.dart';
import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Home_Screen/home_screen.dart';
import 'package:doctor_consultation/Onboarding_Screens/Onboarding_Screen_01/find_doctors.dart';
import 'package:doctor_consultation/Onboarding_Screens/screen_02.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen01 extends StatefulWidget {
  const OnboardingScreen01({super.key});

  @override
  State<OnboardingScreen01> createState() => _OnboardingScreen01State();
}

class _OnboardingScreen01State extends State<OnboardingScreen01> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnboardingScreen02())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 750,
            right: -60,
            child: Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                  color: splashColor.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(250).w),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 100,
                        spreadRadius: 150,
                        color: splashColor.withOpacity(.7))
                  ]),
            ),
          ),
          Positioned(
            top: -130,
            left: -280,
            child: Transform.rotate(
              angle: pi / 3.9.w,
              child: Container(
                width: 450,
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(800).w),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          mainColor.withOpacity(1),
                          mainColor.withOpacity(1)
                        ])),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'asset/onboarding01.jpg',
              ),
              radius: 350.r,
            ),
          ),
          Center(
            child: Container(
              width: 630.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 450.h,
                  ),
                  Text('Find Trusted Doctors',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 80.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 50.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  OnboardingButton(
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnboardingScreen02()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 70.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
