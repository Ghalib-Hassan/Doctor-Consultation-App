import 'package:doctor_consultation/src/Core/Screens/menu_screen.dart';
import 'package:doctor_consultation/src/Core/Screens/privacy_policy.dart';
import 'package:doctor_consultation/src/Core/Screens/profile1.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page06 extends StatefulWidget {
  const Page06({super.key});

  @override
  State<Page06> createState() => _Page06State();
}

class _Page06State extends State<Page06> {
  bool isSwitched = false;
  void ToggleButtons(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  bool isbutton = false;
  void toggle(bool value) {
    setState(() {
      isbutton = value;
    });
  }

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
      Column(children: [
        Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuScreen()));
                },
                child: Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.all(const Radius.circular(20).w)),
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
                'Settings',
                style: TextStyle(
                    fontSize: 80.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ])),
        Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                height: 900,
                width: 1200.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text(
                          'Account Settings',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 80.sp,
                              color: const Color(0x00677294).withOpacity(1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.redAccent),
                                child: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Change Password',
                                      style: TextStyle(
                                          fontSize: 60.sp,
                                          color: Colors.black38),
                                    ),
                                    const SizedBox(
                                      width: 100,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.black38))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 0.1,
                        color: Colors.black12,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green),
                            child: const Icon(
                              Icons.pie_chart,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Text(
                              'Notification',
                              style: TextStyle(
                                  fontSize: 60.sp, color: Colors.black38),
                            ),
                          ),
                          const SizedBox(
                            width: 130,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                              ))
                        ],
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.pie_chart,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Statistics',
                                style: TextStyle(
                                    fontSize: 60.sp, color: Colors.black38),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 150,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                              ))
                        ],
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.group,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const About()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'About us',
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 60.sp),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 145,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const About()));
                                      },
                                      child: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black38,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 210),
                        child: Container(
                          child: Text(
                            'More Options',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 80.sp,
                                color: const Color(0x00677294).withOpacity(1)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              child: Text(
                                'Text Messages',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 60.sp),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 170,
                          ),
                          Text(
                            isSwitched ? '' : '',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black38),
                          ),
                          Switch(
                            value: isSwitched,
                            onChanged: ToggleButtons,
                            activeTrackColor: Colors.white,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              child: Text(
                                'Phone Calls',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 60.sp),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 190,
                          ),
                          Text(
                            isSwitched ? '' : '',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black38),
                          ),
                          Switch(
                            value: isbutton,
                            onChanged: toggle,
                            activeTrackColor: Colors.white,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              child: Text(
                                'Language',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 60.sp),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 210,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              child: Text(
                                'Currency',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 60.sp),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 220,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      const Divider(
                        thickness: 0.1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              child: Text(
                                'Linked account',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 60.sp),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 180,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SelectAccount()));
                              },
                              child: const Icon(Icons.arrow_forward_ios))
                        ],
                      )
                    ],
                  ),
                )))
      ]),
    ])));
  }
}
