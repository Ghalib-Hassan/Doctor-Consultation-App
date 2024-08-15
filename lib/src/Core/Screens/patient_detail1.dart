import 'package:doctor_consultation/src/Core/Screens/patient_detail2.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/navigatePush.dart';

class PatientDetail01 extends StatefulWidget {
  const PatientDetail01({super.key});

  @override
  State<PatientDetail01> createState() => _PatientDetail01State();
}

class _PatientDetail01State extends State<PatientDetail01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Backgroundsplash(),
        Column(
          children: [
            AppbarPop(
              sizedWidth: 10.w,
              title: 'Patient Details',
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
                'asset/Hassam/illustration1.png',
                scale: 1,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Your cart is empty',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 50.h,
            ),
            Buttons(
                fontSize: 14.sp,
                Cwidth: 140.w,
                text: 'Add Tests',
                onPressed: () {
                  navPush(context, const PatientDetail02());
                })
          ],
        ),
      ]),
    );
  }
}
