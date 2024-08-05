import 'package:doctor_consultation/src/Core/Screens/diagnostic_test2.dart';
import 'package:doctor_consultation/src/Core/Screens/help_center.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
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
      Positioned(
        top: 750,
        right: -60,
        child: Container(
          width: 80.w,
          height: 80.h,
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
        top: -30,
        left: -60,
        child: Container(
          width: 80.w,
          height: 80.h,
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
      Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HelpMenu()));
                  },
                  child: Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(const Radius.circular(10).w)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  'Diagnostics Tests',
                  style: TextStyle(
                      fontSize: 80.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ])),
          const SizedBox(
            height: 100,
          ),
          Container(
            child: Image.asset('asset/Hassam/illustration.png'),
          ),
          const SizedBox(height: 50),
          Container(
            child: Text(
              'You have not booked any test yet',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80.sp,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            child: Text('Get started with your first health checkup',
                style: TextStyle(
                    color: Colors.black.withOpacity(.7), fontSize: 60.sp)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).w,
                color: mainColor.withOpacity(1)),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DiagnosticTest()));
                },
                child: Text(
                  'Book Now',
                  style: TextStyle(color: Colors.white, fontSize: 60.sp),
                )),
          ),
        ],
      ),
    ]));
  }
}
