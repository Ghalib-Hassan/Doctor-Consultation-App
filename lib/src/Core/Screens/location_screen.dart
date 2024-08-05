import 'package:doctor_consultation/src/Core/Screens/menu_screen.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
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
                              builder: (context) => const MenuScreen()));
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
                    'Enable Location Services',
                    style: TextStyle(
                        fontSize: 80.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ])),
            SizedBox(
              height: 120.h,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0x00c6efe5).withOpacity(.7)),
              child: Image.asset(
                'asset/assets/image/image_3.png',
                scale: 3,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Location',
              style: TextStyle(
                  fontSize: 80.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Text(
                'your location services are switched off. Please enable location, to help us serve better',
                style: TextStyle(
                    color: Colors.black.withOpacity(.7), fontSize: 60.sp),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: mainColor.withOpacity(1)),
              child: Center(
                  child: Text(
                'Enable Location',
                style: TextStyle(color: Colors.white, fontSize: 60.sp),
              )),
            )
          ],
        ),
      ]),
    );
  }
}
