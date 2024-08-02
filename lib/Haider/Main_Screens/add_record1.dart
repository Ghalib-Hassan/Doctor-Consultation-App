import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/all_records.dart';
import 'package:doctor_consultation/Haider/Main_Screens/medical_records.dart';
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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MedicalRecord()));
            },
            child: Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).w,
                  color: Colors.white),
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
        ),
        title: Text(
          'Add Records',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.sp),
        ),
      ),

      //////////
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  SizedBox(
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
            SizedBox(
              height: 100,
            ),
            Container(
              width: double.infinity.w,
              height: 600.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20).w,
                  color: Colors.white,
                  boxShadow: [
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
                            SizedBox(
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
                        Icon(Icons.border_color_outlined)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    //////////////////
                    SizedBox(
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
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.insert_page_break,
                                      color: Color.fromARGB(255, 92, 88, 88),
                                    ),
                                    Text(
                                      'Report',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 92, 88, 88),
                                          fontSize: 60.sp),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                //////////////////
                                Column(
                                  children: [
                                    Icon(
                                      Icons.restore_page_rounded,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      'Prescription',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 60.sp),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                ///////////
                                Column(
                                  children: [
                                    Icon(
                                      Icons.receipt,
                                      color: Color.fromARGB(255, 92, 88, 88),
                                    ),
                                    Text(
                                      'Invoice',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 92, 88, 88),
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

                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    //////////////////
                    SizedBox(
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
                            SizedBox(
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
                        Icon(Icons.border_color_outlined)
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(),
                    SizedBox(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AllRecords()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
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
            SizedBox(height: 20),
            /////
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AllRecords()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
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
            SizedBox(height: 20),
            ////
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AllRecords()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
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
            SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
