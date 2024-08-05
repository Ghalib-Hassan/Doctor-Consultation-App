import 'package:doctor_consultation/src/Core/Screens/patient_detail1.dart';
import 'package:doctor_consultation/src/Core/Screens/settings.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

final List<String> Months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
final List<String> Days = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];
final List<String> Years = [
  '2000',
  '2001',
  '2002',
  '2003',
  '2004',
  '2005',
  '2006',
  '2007',
  '2008',
  '2009',
  '2010',
  '2011',
  '2012',
  '2013',
  '2014',
  '2015',
  '2016',
  '2017',
  '2018',
  '2019',
  '2020',
  '2021',
  '2022',
  '2023',
  '2024',
];

String selectedDay = 'Monday';
String selectedMonth = 'January';
String selectedYear = '2024';
int selectedGender = 0;

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Page03()));
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
                'Patient Details',
                style: TextStyle(
                    fontSize: 80.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ])),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Step 1/4',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 70.sp),
                  ),
                  Image.asset('asset/Hassam/step.png')
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 580,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 25),
                child: Text('Patient Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 70.sp)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 50.sp, color: Colors.black),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        const Radius.circular(40).w,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 25),
                    focusColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Abdullah Memon',
                    hintStyle: TextStyle(
                        fontSize: 50.sp,
                        color: const Color(0x00677294).withOpacity(1),
                        fontWeight: FontWeight.w300),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        const Radius.circular(40).w,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270, top: 20, bottom: 10),
                child: Text(
                  'Age',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 70.sp),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return ListView.builder(
                              itemCount: Days.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    Days[index],
                                    style: TextStyle(fontSize: 50.sp),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedDay = Days[index];
                                    });
                                    Navigator.pop(context);
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                selectedDay.isNotEmpty ? selectedDay : 'DAY',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 50.sp),
                              ),
                              const Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 14, bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return ListView.builder(
                                  itemCount: Months.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                        Months[index],
                                        style: TextStyle(fontSize: 50.sp),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          selectedMonth = Months[index];
                                        });
                                        Navigator.pop(context);
                                      },
                                    );
                                  });
                            });
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                selectedMonth.isNotEmpty
                                    ? selectedMonth
                                    : 'MONTH',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 50.sp),
                              ),
                              const Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 8),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return ListView.builder(
                                  itemCount: Years.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                        Years[index],
                                        style: TextStyle(fontSize: 50.sp),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          selectedYear = Years[index];
                                        });
                                        Navigator.pop(context);
                                      },
                                    );
                                  });
                            });
                      },
                      child: Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                selectedYear.isNotEmpty ? selectedYear : 'Year',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 50.sp),
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 240, bottom: 10),
                  child: Text(
                    'Gender',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 70.sp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 1;
                        });
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(50),
                            color: selectedGender == 1
                                ? Colors.black
                                : Colors.transparent),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(color: Colors.black38, fontSize: 50.sp),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 2;
                        });
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(50),
                            color: selectedGender == 2
                                ? Colors.black
                                : Colors.transparent),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Female',
                      style: TextStyle(color: Colors.black38, fontSize: 50.sp),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 3;
                        });
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(50),
                            color: selectedGender == 3
                                ? Colors.black
                                : Colors.transparent),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Others',
                      style: TextStyle(color: Colors.black38, fontSize: 50.sp),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 170, top: 20),
                  child: Text(
                    'Mobile Number',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 70.sp,
                        color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 50.sp, color: Colors.black),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        const Radius.circular(40).w,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    focusColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Your Phone Number',
                    hintStyle: TextStyle(
                        fontSize: 50.sp,
                        color: const Color(0x00677294).withOpacity(1),
                        fontWeight: FontWeight.w300),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        const Radius.circular(40).w,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 20),
                child: Container(
                  child: Text(
                    'Email',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 70.sp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 50.sp, color: Colors.black),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        const Radius.circular(40).w,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    focusColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Your Email',
                    hintStyle: TextStyle(
                        fontSize: 50.sp,
                        color: const Color(0x00677294).withOpacity(1),
                        fontWeight: FontWeight.w300),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        const Radius.circular(40).w,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.greenAccent,
          ),
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page06()));
              },
              child: Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 70.sp,
                    fontWeight: FontWeight.bold),
              )),
        )
      ]),
    ]));
  }
}
