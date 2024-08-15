import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:doctor_consultation/src/Custom_Widgets/onboardingSplash2.dart';
import 'package:doctor_consultation/src/Custom_Widgets/onboarding_button.dart';
import 'package:doctor_consultation/src/Onboarding_Screens/screen_03.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen02 extends StatefulWidget {
  const OnboardingScreen02({super.key});

  @override
  State<OnboardingScreen02> createState() => _OnboardingScreen02State();
}

class _OnboardingScreen02State extends State<OnboardingScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const OnboardingSplash2(),
          Positioned(
            right: 30,
            top: 100,
            child: Container(
              width: 110.r * 2,
              height: 110.r * 2,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('asset/onboarding02.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerRight,
                ),
              ),
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
                  Text('Choose Best Doctors',
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
                              builder: (context) =>
                                  const OnboardingScreen03()));
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
