import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
import 'package:doctor_consultation/Hassam/page35.dart';
import 'package:doctor_consultation/Hassam/page39.dart';
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
            child: Column(children: [
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Text(
                      'Account Settings',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80.sp,
                          color: Color(0x677294).withOpacity(1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
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
                            child: Icon(
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
                                      fontSize: 60.sp, color: Colors.black38),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios,
                                        color: Colors.black38))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
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
                        child: Icon(
                          Icons.pie_chart,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Text(
                          'Notification',
                          style:
                              TextStyle(fontSize: 60.sp, color: Colors.black38),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black38,
                          ))
                    ],
                  ),
                  Divider(
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
                        child: Icon(
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
                      SizedBox(
                        width: 150,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black38,
                          ))
                    ],
                  ),
                  Divider(
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
                        child: Icon(
                          Icons.group,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => About()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  'About us',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 60.sp),
                                ),
                              ),
                              SizedBox(
                                width: 145,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => About()));
                                  },
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black38,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.1,
                  ),
                  SizedBox(
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
                            color: Color(0x677294).withOpacity(1)),
                      ),
                    ),
                  ),
                  SizedBox(
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
                      SizedBox(
                        width: 170,
                      ),
                      Text(
                        isSwitched ? '' : '',
                        style: TextStyle(fontSize: 20, color: Colors.black38),
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: ToggleButtons,
                        activeTrackColor: Colors.white,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.1,
                  ),
                  SizedBox(
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
                      SizedBox(
                        width: 190,
                      ),
                      Text(
                        isSwitched ? '' : '',
                        style: TextStyle(fontSize: 20, color: Colors.black38),
                      ),
                      Switch(
                        value: isbutton,
                        onChanged: toggle,
                        activeTrackColor: Colors.white,
                        activeColor: Colors.green,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.1,
                  ),
                  SizedBox(
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
                      SizedBox(
                        width: 210,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                  Divider(
                    thickness: 0.1,
                  ),
                  SizedBox(
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
                      SizedBox(
                        width: 220,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                  Divider(
                    thickness: 0.1,
                  ),
                  SizedBox(
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
                      SizedBox(
                        width: 180,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectAccount()));
                          },
                          child: Icon(Icons.arrow_forward_ios))
                    ],
                  )
                ],
              )))
    ])));
  }
}
