import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/add_record1.dart';
import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
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
        Positioned(
          top: 750,
          right: -60,
          child: Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
                color: splashColor.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(250).w),
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
                borderRadius: BorderRadius.all(Radius.circular(250).w),
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
                              builder: (context) => MenuScreen()));
                    },
                    child: Container(
                      height: 40.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10).w)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Text(
                    'Medical Records',
                    style: TextStyle(
                        fontSize: 80.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ])),
            SizedBox(
              height: 130.h,
            ),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xC6EFE5).withOpacity(.7)),
              child: Image.asset(
                'asset/assets/image/image_1.png',
                scale: 3,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'add a medical record.',
              style: TextStyle(
                  fontSize: 80.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Text(
                'A detailed health history helps a doctor diagnose you better.',
                style: TextStyle(color: Colors.black, fontSize: 50.sp),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddRecords()));
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: mainColor.withOpacity(1)),
                child: Center(
                    child: Text(
                  'Add a record',
                  style: TextStyle(color: Colors.white, fontSize: 60.sp),
                )),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
