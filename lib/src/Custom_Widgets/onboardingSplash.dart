import 'dart:math';

import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboardingsplash extends StatelessWidget {
  const Onboardingsplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 750,
          right: -100,
          child: Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: splashColor.withOpacity(0.1),
                borderRadius: BorderRadius.all(const Radius.circular(250).w),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 100,
                      spreadRadius: 150,
                      color: splashColor.withOpacity(.7))
                ]),
          ),
        ),
        Positioned(
          top: -100,
          left: -200,
          child: Transform.rotate(
            angle: pi / 3.9.w,
            child: Container(
              width: 450,
              height: 450,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(800).w),
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
      ],
    ));
  }
}
