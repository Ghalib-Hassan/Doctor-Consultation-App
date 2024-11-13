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
            right: 15,
            top: 80,
            child: CircleAvatar(
              backgroundImage: const AssetImage(
                'asset/onboarding02.jpg',
              ),
              radius: 200.r,
            ),
          ),
          SizedBox(
            // width: 260.w,
            child: Column(
              children: [
                const SizedBox(
                  height: 370,
                ),
                const Text('Choose Best Doctors',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 25.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40.h,
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
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
