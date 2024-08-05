import 'package:doctor_consultation/src/Core/Screens/diagnostic_test2.dart';
import 'package:doctor_consultation/src/Core/Screens/patient_detail2.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page03 extends StatefulWidget {
  const Page03({super.key});

  @override
  State<Page03> createState() => _Page03State();
}

class _Page03State extends State<Page03> {
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
            Row(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                    child: Row(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DiagnosticTest()));
                        },
                        child: Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  const Radius.circular(20).w)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.w,
                      ),
                      Text(
                        'Patient Details',
                        style: TextStyle(
                            fontSize: 80.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ])),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                child: Image.asset('asset/Hassam/illustration1.png'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Text('Your cart is empty',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 70.sp,
                      color: Colors.black)),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(5),
                  color: mainColor.withOpacity(1)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Page4()));
                  },
                  child: Text(
                    'ADD TEST',
                    style: TextStyle(color: Colors.white, fontSize: 60.sp),
                  )),
            )
          ],
        ),
      ]),
    );
  }
}
