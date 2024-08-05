import 'package:doctor_consultation/src/Core/Screens/all_records.dart';
import 'package:doctor_consultation/src/Core/Screens/medical_records.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddRecords extends StatefulWidget {
  const AddRecords({super.key});

  @override
  State<AddRecords> createState() => _AddRecordsState();
}

class _AddRecordsState extends State<AddRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////
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
          Column(
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
                                builder: (context) => const MedicalRecord()));
                      },
                      child: Container(
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(const Radius.circular(10).w)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    Text(
                      'Add Records',
                      style: TextStyle(
                          fontSize: 80.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ])),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 290.w,
                      height: 133.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).w,
                          color: Colors.green[200]),
                      child: Image.asset(
                        'asset/assets/image/child.webp',
                        scale: 1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 290.w,
                      height: 142.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).w,
                          color: Colors.green[100]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: mainColor.withOpacity(1),
                            size: 50,
                          ),
                          Text(
                            'Add more images',
                            style:
                                TextStyle(color: Colors.green, fontSize: 60.sp),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: double.infinity.w,
                height: 600.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20).w,
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Color.fromARGB(255, 236, 231, 231))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Record for',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 60.sp),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hiader khan khalil',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60.sp),
                              )
                            ],
                          ),
                          const Icon(Icons.border_color_outlined)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      //////////////////
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Type of record',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 60.sp),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.insert_page_break,
                                        color: Color.fromARGB(255, 92, 88, 88),
                                      ),
                                      Text(
                                        'Report',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 92, 88, 88),
                                            fontSize: 60.sp),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  //////////////////
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.restore_page_rounded,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        'Prescription',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 60.sp),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  ///////////
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.receipt,
                                        color: Color.fromARGB(255, 92, 88, 88),
                                      ),
                                      Text(
                                        'Invoice',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 92, 88, 88),
                                            fontSize: 60.sp),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      //////////////////
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Record created on',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 60.sp)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '27 Feb, 2021',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60.sp),
                              )
                            ],
                          ),
                          const Icon(Icons.border_color_outlined)
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 370.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5).w,
                            color: mainColor.withOpacity(1)),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              _showAddRecordsDialog(context);
                            },
                            child: Text(
                              'Upload record',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60.sp),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
/////////////////////////showing nextpage dialog box/////////////////

void _showAddRecordsDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Add a record',
          style: TextStyle(
              color: Colors.black,
              fontSize: 60.sp,
              fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllRecords()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.camera_alt_rounded,
                  ),
                  SizedBox(width: 30.w),
                  Text(
                    'Take a photo',
                    style: TextStyle(color: Colors.black, fontSize: 60.sp),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            /////
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllRecords()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.photo_outlined,
                  ),
                  SizedBox(width: 30.w),
                  Text(
                    'upload from gallery',
                    style: TextStyle(color: Colors.black, fontSize: 60.sp),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            ////
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllRecords()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.picture_as_pdf_outlined,
                  ),
                  SizedBox(width: 30.w),
                  Text(
                    'Upload files',
                    style: TextStyle(color: Colors.black, fontSize: 60.sp),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
