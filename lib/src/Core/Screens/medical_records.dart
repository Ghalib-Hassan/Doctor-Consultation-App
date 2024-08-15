import 'package:doctor_consultation/src/Core/Screens/add_record.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalRecord extends StatefulWidget {
  const MedicalRecord({super.key});

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Backgroundsplash(),
        Column(
          children: [
            AppbarPop(
              sizedWidth: 10.w,
              title: 'Medical Records',
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
                'asset/assets/image/image_1.png',
                scale: 4,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Add a medical record.',
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
                'A detailed health history helps a doctor diagnose you better.',
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
                text: 'Add a record',
                onPressed: () {
                  navPush(context, const AddRecords());
                })
          ],
        ),
      ]),
    );
  }
}
