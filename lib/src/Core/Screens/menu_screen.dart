import 'package:doctor_consultation/src/Core/Screens/help_center.dart';
import 'package:doctor_consultation/src/Core/Screens/location_screen.dart';
import 'package:doctor_consultation/src/Core/Screens/medical_records.dart';
import 'package:doctor_consultation/src/Core/Screens/medicine_order1.dart';
import 'package:doctor_consultation/src/Core/Screens/my_doctors.dart';
import 'package:doctor_consultation/src/Core/Screens/privacy_policy.dart';
import 'package:doctor_consultation/src/Core/Screens/settings.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List titles = [
    'My Doctors',
    'Medical Records',
    'Payments',
    'Medicine Orders',
    'Test Bookings',
    'Privacy & Policy',
    'Help Center',
    'Settings',
    'Logout',
  ];
  List icons = [
    Icons.person,
    Icons.medical_information_rounded,
    Icons.payment,
    Icons.medication_liquid_rounded,
    Icons.calendar_month,
    Icons.privacy_tip,
    Icons.help_center,
    Icons.settings,
    Icons.logout,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color(0x006f7fa1).withOpacity(1),
          const Color(0x00536184).withOpacity(1)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
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
                        borderRadius:
                            BorderRadius.all(const Radius.circular(150).w),
                        child: Image.asset(
                          'asset/abuzar.jpeg',
                          fit: BoxFit.cover,
                          height: 50.h,
                          width: 35.w,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abdullah Mamun',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              Text(
                                ' 01303-527300',
                                style: TextStyle(fontSize: 10.sp),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        width: 20.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(const Radius.circular(50).w)),
                        child: Image.asset(
                          'asset/cancel.png',
                          scale: 3,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (context, index) {
                    if (index == titles.length - 1) {
                      return Column(
                        children: [
                          SizedBox(height: 50.h),
                          InkWell(
                            onTap: () {
                              if (index == 8) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Log Out',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(
                                        'Are you sure you want to logout?',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: const Color(0x00677294)
                                                .withOpacity(1),
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
                                                color: const Color(0x000ebe7f)
                                                    .withOpacity(1),
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Ok',
                                            style: TextStyle(
                                                color: const Color(0x000ebe7f)
                                                    .withOpacity(1),
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            child: ListTile(
                              leading: Icon(
                                icons[index],
                                color: Colors.white,
                                size: 40,
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                              title: Text(
                                '${titles[index]}',
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return InkWell(
                        onTap: () {
                          if (index == 0) {
                            navPush(context, const MyDoctors());
                          } else if (index == 1) {
                            navPush(context, const MedicalRecord());
                          } else if (index == 3) {
                            navPush(context, const MedicineOrder());
                          } else if (index == 4) {
                            navPush(context, const EnableLocation());
                          } else if (index == 5) {
                            navPush(context, const About());
                          } else if (index == 6) {
                            navPush(context, const HelpMenu());
                          } else if (index == 7) {
                            navPush(context, const Settings());
                          }
                        },
                        child: ListTile(
                          leading: Icon(
                            icons[index],
                            color: Colors.white,
                            size: 40,
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                          title: Text(
                            '${titles[index]}',
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
