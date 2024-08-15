import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';

import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectAccount extends StatefulWidget {
  const SelectAccount({super.key});

  @override
  State<SelectAccount> createState() => _SelectAccountState();
}

class _SelectAccountState extends State<SelectAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0x000ebe7f).withOpacity(1),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Column(children: [
                  AppbarPop(
                    textColor: Colors.white,
                    sizedWidth: 10.w,
                    title: 'Profile',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Set up your profile',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: Text(
                      'Update your profile to connect your doctor with better impression.',
                      style: TextStyle(color: Colors.white, fontSize: 8.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Stack(children: [
                    SizedBox(
                      height: 130,
                      width: 130,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('asset/Hassam/hasso.jpg'),
                        child: Padding(
                          padding: EdgeInsets.only(top: 70, left: 110),
                          child: Icon(Icons.camera_alt),
                        ),
                      ),
                    )
                  ]),
                ]))
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Text(
              'Personal information',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14.sp),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(5).w,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                focusColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                labelText: 'Name',
                labelStyle: TextStyle(
                    fontSize: 10.sp,
                    color: const Color(0x00677294).withOpacity(1),
                    fontWeight: FontWeight.w300),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(5).w,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.colorize_outlined),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(5).w,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                focusColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                labelText: 'Contact Number',
                labelStyle: TextStyle(
                    fontSize: 10.sp,
                    color: const Color(0x00677294).withOpacity(1),
                    fontWeight: FontWeight.w300),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(5).w,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.colorize_outlined),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(5).w,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                focusColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                labelText: 'DD MM YYYY',
                labelStyle: TextStyle(
                    fontSize: 10.sp,
                    color: const Color(0x00677294).withOpacity(1),
                    fontWeight: FontWeight.w300),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(5).w,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(5).w,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                focusColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                labelText: 'Location',
                labelStyle: TextStyle(
                    fontSize: 10.sp,
                    color: const Color(0x00677294).withOpacity(1),
                    fontWeight: FontWeight.w300),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(5).w,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          Center(
            child: Buttons(
                Cwidth: 120.w,
                text: 'Continue',
                onPressed: () {
                  navPush(context, const HomeScreen());
                }),
          )
        ],
      ),
    );
  }
}
