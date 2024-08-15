import 'package:doctor_consultation/src/Core/Screens/settings.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientDetail02 extends StatefulWidget {
  const PatientDetail02({super.key});

  @override
  State<PatientDetail02> createState() => _PatientDetail02State();
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

class _PatientDetail02State extends State<PatientDetail02> {
  int currentStep = 0;

  void updateStep(int step) {
    setState(() {
      currentStep = step;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Backgroundsplash(),
      SingleChildScrollView(
        child: Column(children: [
          AppbarPop(
            sizedWidth: 10.w,
            title: 'Patient Details',
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 50.h,
            width: 190.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Step $currentStep/5',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 10.sp),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: currentStep / 5,
                      backgroundColor: Colors.grey[300],
                      color: mainColor.withOpacity(1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 390.h,
            width: 190.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Patient Name',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14.sp)),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            const Radius.circular(3).w,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
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
                            const Radius.circular(3).w,
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty) updateStep(1);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Age',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
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
                                        style: TextStyle(fontSize: 10.sp),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          selectedDay = Days[index];
                                        });
                                        Navigator.pop(context);
                                        updateStep(2);
                                      },
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 40.h,
                            width: 55.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  selectedDay.isNotEmpty ? selectedDay : 'DAY',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 8.sp),
                                ),
                                const Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
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
                                            style: TextStyle(fontSize: 10.sp),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              selectedMonth = Months[index];
                                            });
                                            Navigator.pop(context);
                                            updateStep(2);
                                          },
                                        );
                                      });
                                });
                          },
                          child: Container(
                            height: 40.h,
                            width: 55.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  selectedMonth.isNotEmpty
                                      ? selectedMonth
                                      : 'MONTH',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 8.sp),
                                ),
                                const Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
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
                                            style: TextStyle(fontSize: 10.sp),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              selectedYear = Years[index];
                                            });
                                            Navigator.pop(context);
                                            updateStep(2);
                                          },
                                        );
                                      });
                                });
                          },
                          child: Container(
                            height: 40.h,
                            width: 55.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  selectedYear.isNotEmpty
                                      ? selectedYear
                                      : 'YEAR',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 8.sp),
                                ),
                                const Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Gender',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = 1;
                            });
                            updateStep(3);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.circular(50),
                                color: selectedGender == 1
                                    ? mainColor.withOpacity(1)
                                    : Colors.transparent),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                              color: const Color(0x00677294).withOpacity(1),
                              fontSize: 10.sp),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = 2;
                            });
                            updateStep(3);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.circular(50),
                                color: selectedGender == 2
                                    ? mainColor.withOpacity(1)
                                    : Colors.transparent),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                              color: const Color(0x00677294).withOpacity(1),
                              fontSize: 10.sp),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = 3;
                            });
                            updateStep(3);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.circular(50),
                                color: selectedGender == 3
                                    ? mainColor.withOpacity(1)
                                    : Colors.transparent),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Others',
                          style: TextStyle(
                              color: const Color(0x00677294).withOpacity(1),
                              fontSize: 10.sp),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            const Radius.circular(5).w,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        focusColor: Colors.black,
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Enter Your Phone Number',
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
                      onChanged: (value) {
                        if (value.isNotEmpty) updateStep(4);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            const Radius.circular(5).w,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        focusColor: Colors.black,
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Enter Your Email',
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
                      onChanged: (value) {
                        if (value.isNotEmpty) updateStep(5);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Buttons(
              Cwidth: 120.w,
              text: 'Continue',
              onPressed: () {
                if (currentStep == 5) {
                  navPush(context, const Settings());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      'Please fill all the fields!',
                      style: TextStyle(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: mainColor.withOpacity(1),
                  ));
                }
              })
        ]),
      )
    ]));
  }
}
