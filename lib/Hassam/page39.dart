import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Hassam/page36.dart';
import 'package:doctor_consultation/Hassam/page40.dart';
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
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page06()));
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
                          color: Colors.black),
                    )
                  ])),
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0x0EBE7F).withOpacity(1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Set up your profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 60.sp),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Update your profile to connect your doctor with'
                        'better impression.',
                        style: TextStyle(color: Colors.white, fontSize: 50.sp),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(children: [
                        Container(
                          height: 130,
                          width: 130,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('asset/Hassam/hasso.jpg'),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 70, left: 110),
                              child: Icon(Icons.camera_alt),
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 150, top: 20),
                  child: Text(
                    'Personal information',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 70.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 230, top: 5),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            color: Color(0x0EBE7F).withOpacity(1),
                            fontSize: 30.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            'Hassam',
                            style: TextStyle(
                                color: Colors.black38, fontSize: 60.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 220, top: 5),
                      child: Text(
                        'Date of birth',
                        style: TextStyle(
                            color: Color(0x0EBE7F).withOpacity(1),
                            fontSize: 30.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            'DD MM YYYY',
                            style: TextStyle(
                                color: Colors.black38, fontSize: 60.sp),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 165),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black38,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200, top: 5),
                      child: Text(
                        'Contact Number',
                        style: TextStyle(
                            color: Color(0x0EBE7F).withOpacity(1),
                            fontSize: 30.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            'xxxxxxxxxx',
                            style: TextStyle(
                                color: Colors.black38, fontSize: 60.sp),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 180),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black38,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 230, top: 5),
                      child: Text(
                        'location',
                        style: TextStyle(
                            color: Color(0x0EBE7F).withOpacity(1),
                            fontSize: 30.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text(
                        'Location',
                        style:
                            TextStyle(color: Colors.black38, fontSize: 60.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60.h,
                width: 350.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: mainColor.withOpacity(1),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => End()));
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 70.sp),
                    )),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
