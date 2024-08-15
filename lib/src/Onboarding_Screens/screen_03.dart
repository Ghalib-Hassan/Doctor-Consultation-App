import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:doctor_consultation/src/Custom_Widgets/onboardingSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen03 extends StatefulWidget {
  const OnboardingScreen03({super.key});

  @override
  State<OnboardingScreen03> createState() => _OnboardingScreen03State();
}

class _OnboardingScreen03State extends State<OnboardingScreen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Onboardingsplash(),
          Positioned(
            left: 30,
            top: 100,
            child: CircleAvatar(
              backgroundImage: const AssetImage(
                'asset/onboarding03.jpg',
              ),
              radius: 110.r,
            ),
          ),
          Center(
            child: SizedBox(
              width: 180.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 320.h,
                  ),
                  Text('Easy Appointments',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  OnboardingButton(
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
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
                              builder: (context) => const HomeScreen()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 17.sp,
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
