import 'package:doctor_consultation/Haider/Main_Screens/help_center.dart';
import 'package:doctor_consultation/Haider/Main_Screens/location_screen.dart';
import 'package:doctor_consultation/Haider/Main_Screens/medical_records.dart';
import 'package:doctor_consultation/Haider/Main_Screens/medicine_order1.dart';
import 'package:doctor_consultation/Haider/Main_Screens/my_doctors.dart';
import 'package:doctor_consultation/Hassam/page35.dart';
import 'package:doctor_consultation/Hassam/page36.dart';
import 'package:doctor_consultation/Home_Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0x6F7FA1).withOpacity(1),
          Color(0x536184).withOpacity(1)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(150).w),
                        child: Image.asset(
                          'asset/abuzar.jpeg',
                          fit: BoxFit.cover,
                          height: 80.h,
                          width: 80.h,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        children: [
                          Text(
                            'Abdullah Mamun',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 70.sp),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              Text(
                                ' 01303-527300',
                                style: TextStyle(fontSize: 60.sp),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Container(
                        width: 150.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(150).w)),
                        child: Image.asset(
                          'asset/cancel.png',
                          scale: 3,
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FindDoctors()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 19.0),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          'My Doctors',
                          style: TextStyle(fontSize: 62.sp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 19.0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MedicalRecord()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.medical_information_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          'Medical Records',
                          style: TextStyle(fontSize: 62.sp),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 19.0),
                        child: Icon(
                          Icons.payment,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Text(
                        'Payments ',
                        style: TextStyle(fontSize: 65.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 19.0),
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MedicineOrder()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.medication_liquid_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          'Medicine Orders',
                          style: TextStyle(fontSize: 62.sp),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnableLocation()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Test Bookings',
                          style: TextStyle(fontSize: 62.sp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => About()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.privacy_tip,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Privacy & Policy',
                          style: TextStyle(fontSize: 62.sp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HelpMenu()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Icon(
                            Icons.help_center,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Help Center',
                          style: TextStyle(fontSize: 62.sp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page06()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 29.0),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(fontSize: 62.sp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 29.0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'Log Out',
                            style: TextStyle(
                                fontSize: 90.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          content: Text(
                            'Are you sure you want to logout?',
                            style: TextStyle(
                                fontSize: 60.sp,
                                color: Color(0x677294).withOpacity(1),
                                fontWeight: FontWeight.w400),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Color(0x0EBE7F).withOpacity(1),
                                      fontSize: 50.sp,
                                      fontWeight: FontWeight.w500),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Ok',
                                  style: TextStyle(
                                      color: Color(0x0EBE7F).withOpacity(1),
                                      fontSize: 50.sp,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(children: [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(
                      width: 100.w,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 62.sp),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
