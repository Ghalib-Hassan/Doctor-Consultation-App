import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
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
        Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuScreen()));
                  },
                  child: Container(
                    height: 40.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20).w)),
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
                  'Privacy policy',
                  style: TextStyle(
                      fontSize: 80.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ])),
          Container(
            height: 900,
            width: 335,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Doctor Hunt Apps Privacy Policy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0x677294).withOpacity(1),
                        fontSize: 80.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ',
                            style: TextStyle(
                                color: Color(0x959CB4).withOpacity(.8),
                                fontSize: 60.sp)),
                        SizedBox(
                          height: 15.h,
                        ),
                        Column(
                          children: [
                            Image.asset('asset/Hassam/Group1.png'),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                                'It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.',
                                style: TextStyle(
                                    color: Color(0x959CB4).withOpacity(.8),
                                    fontSize: 60.sp)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ]),
    ));
  }
}
