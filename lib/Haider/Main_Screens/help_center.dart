import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/medicine_order1.dart';
import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
import 'package:doctor_consultation/Hassam/page31.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpMenu extends StatefulWidget {
  const HelpMenu({super.key});

  @override
  State<HelpMenu> createState() => _HelpMenuState();
}

class _HelpMenuState extends State<HelpMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////
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
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
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
                      'Help center',
                      style: TextStyle(
                          fontSize: 80.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ])),
              SizedBox(
                height: 30.h,
              ),
              TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'I have an issue with',
                    hintStyle: TextStyle(
                        color: mainColor.withOpacity(1), fontSize: 60.sp)
                    // prefixIcon: Icon(Icons.search),
                    // suffixIcon: Icon(Icons.cancel)
                    ),
              ),
              ///////////////////////////////////////
              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Booking a new Appointment',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ///////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Existing Appointment',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ///////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Online consultations',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              /////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feedbacks',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ///////////////////
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MedicineOrder()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Medicine orders',
                      style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ////////////////
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Diagnostic()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Diagnostic Tests',
                      style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Health plans',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              /////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My account and practo Drive',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ///////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Have a feature in mind',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Other issues',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //////////////////

              ////////////////////////
            ],
          ),
        ),
      ]),
    );
  }
}
