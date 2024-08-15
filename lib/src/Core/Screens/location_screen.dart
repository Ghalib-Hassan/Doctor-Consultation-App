import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
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
        const Backgroundsplash(),
        Column(
          children: [
            AppbarPop(
              sizedWidth: 10.w,
              title: 'Enable Location Services',
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
                'asset/assets/image/image_3.png',
                scale: 4,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Location',
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
                'Your location services are switched off. Please enable location, to help us serve better.',
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
                text: 'Enable Location',
                onPressed: () {})
          ],
        ),
      ]),
    );
  }
}
