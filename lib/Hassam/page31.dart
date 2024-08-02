import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/help_center.dart';
import 'package:doctor_consultation/Hassam/page32.dart';
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
        // backgroundColor: Colors.greenAccent,
        appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HelpMenu()));
                },
                child: Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).w,
                      color: Colors.white),
                  child: Icon(Icons.arrow_back_ios_new_rounded),
                ),
              ),
            ),
            title: Text(
              'Diagnostics Tests',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 80.sp),
              selectionColor: Colors.black87,
            )),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                child: Image.asset('asset/Hassam/illustration.png'),
              ),
              SizedBox(height: 50),
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
              SizedBox(
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
                              builder: (context) => DiagnosticTest()));
                    },
                    child: Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white, fontSize: 60.sp),
                    )),
              ),
            ],
          ),
        ));
  }
}
