import 'package:doctor_consultation/src/Core/Screens/diagnostic_test2.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Diagnostic extends StatefulWidget {
  const Diagnostic({super.key});

  @override
  State<Diagnostic> createState() => _Page02State();
}

class _Page02State extends State<Diagnostic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Backgroundsplash(),
      Column(
        children: [
          AppbarPop(
            sizedWidth: 10.w,
            title: 'Diagnostics Tests',
          ),
          SizedBox(
            height: 80.h,
          ),
          Container(
            width: 110.w,
            height: 160.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(200).w),
                color: const Color(0x00c6efe5).withOpacity(.7)),
            child: Image.asset(
              'asset/Hassam/illustration.png',
              scale: 1,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'You haven’t booked any tests yet',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Get started with your first health checkup',
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Buttons(
              fontSize: 14.sp,
              Cwidth: 140.w,
              text: 'Book Now',
              onPressed: () {
                navPush(context, const DiagnosticTest());
              })
        ],
      ),
    ]));
  }
}
