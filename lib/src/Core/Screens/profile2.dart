import 'package:doctor_consultation/src/Core/Screens/profile1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class End extends StatefulWidget {
  const End({super.key});

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 80, 135),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                child: Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectAccount()));
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
                    'Profile',
                    style: TextStyle(
                        fontSize: 80.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ])),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 190, right: 50),
                        child: Text(
                          'Whats your Name :',
                          style:
                              TextStyle(color: Colors.white, fontSize: 60.sp),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextField(
                          style:
                              TextStyle(fontSize: 80.sp, color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Hassam',
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 80.sp),
                            filled: true,
                            fillColor: Colors.transparent,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
