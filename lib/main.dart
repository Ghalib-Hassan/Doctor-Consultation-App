import 'dart:async';

import 'package:doctor_consultation/Home_Screen/home_screen.dart';
import 'package:doctor_consultation/Onboarding_Screens/screen_01.dart';
// import 'package:doctor_consultation/Onboarding_screens/screen_02.dart';
// import 'package:doctor_consultation/Onboarding_Screens/screen_03.dart';
import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Onboarding_Screens/screen_02.dart';
import 'package:doctor_consultation/Onboarding_Screens/screen_03.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1249, 880),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: OnboardingScreen02()
        //const MyHomePage(),
        //HomeScreen()
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnboardingScreen01())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -200,
            left: -100,
            child: Container(
              width: 180.w,
              height: 250.h,
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/main-logo.png',
                  width: 400.w,
                  height: 200.h,
                  fit: BoxFit.fill,
                ),
                Text(
                  'Doctor Hunt',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 80.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: 550,
            right: -80,
            child: Container(
              width: 80.w,
              height: 150.h,
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
        ],
      ),
    );
  }
}
