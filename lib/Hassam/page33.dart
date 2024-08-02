import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Hassam/page32.dart';
import 'package:doctor_consultation/Hassam/page34.dart';
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
      body: Column(
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
                                builder: (context) => DiagnosticTest()));
                      },
                      child: Container(
                        height: 40.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20).w)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              child: Image.asset('asset/Hassam/illustration1.png'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text('Your cart is empty',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 70.sp,
                    color: Colors.black)),
          ),
          SizedBox(
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
                      MaterialPageRoute(builder: (context) => Page4()));
                },
                child: Text(
                  'ADD TEST',
                  style: TextStyle(color: Colors.white, fontSize: 60.sp),
                )),
          )
        ],
      ),
    );
  }
}
