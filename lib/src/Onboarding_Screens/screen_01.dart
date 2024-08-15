import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:doctor_consultation/src/Custom_Widgets/onboardingSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/onboarding_button.dart';
import 'package:doctor_consultation/src/Onboarding_Screens/screen_02.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen01 extends StatefulWidget {
  const OnboardingScreen01({super.key});

  @override
  State<OnboardingScreen01> createState() => _OnboardingScreen01State();
}

class _OnboardingScreen01State extends State<OnboardingScreen01> {
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
                'asset/onboarding01.jpg',
              ),
              radius: 110.r,
            ),
          ),
          SafeArea(
            child: Center(
              child: SizedBox(
                width: 180.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 320.h,
                    ),
                    Text('Find Trusted Doctors',
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
                                    const OnboardingScreen02()));
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
          ),
        ],
      ),
    );
  }
}
