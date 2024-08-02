import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/add_record1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllRecords extends StatefulWidget {
  const AllRecords({super.key});

  @override
  State<AllRecords> createState() => _AllRecordsState();
}

class _AllRecordsState extends State<AllRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddRecords()));
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
          'All Records',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.sp),
        ),
      ),

      ////////////////////
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10.0, right: 10.0),
        child: Column(
          children: [
            Container(
              width: 1200.w,
              height: 154.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).w,
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          width: 170.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).w,
                              color: mainColor.withOpacity(1)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '27 ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60.sp),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'FEB',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60.sp),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ////
                        Container(
                          width: 170.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5).w,
                              color: Colors.green[50]),
                          child: Center(
                              child: Text(
                            'NEW',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 60.sp,
                                fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
                  ),
                  //////////////////second column////////
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Records added by you',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 70.sp),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Record for Haider khan',
                        style: TextStyle(
                            color: Colors.green,
                            // fontWeight: FontWeight.bold,
                            fontSize: 60.sp),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '1 Prescription',
                        style: TextStyle(
                            color: Colors.black54,
                            // fontWeight: FontWeight.bold,
                            fontSize: 60.sp),
                      ),
                    ],
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: Icon(Icons.filter_list_rounded),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //////////////////////////////////second container////////////////

            Container(
              width: 1200.w,
              height: 154.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).w,
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          width: 170.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).w,
                              color: mainColor.withOpacity(1)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '28 ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60.sp),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'FEB',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60.sp),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ////
                        Container(
                          width: 170.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5).w,
                              color: Colors.green[50]),
                          child: Center(
                              child: Text(
                            'NEW',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 60.sp,
                                fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
                  ),
                  //////////////////second column////////
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Records added by you',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 70.sp),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Record for Haider khan',
                        style: TextStyle(
                            color: Colors.green,
                            // fontWeight: FontWeight.bold,
                            fontSize: 60.sp),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '1 Prescription',
                        style: TextStyle(
                            color: Colors.black54,
                            // fontWeight: FontWeight.bold,
                            fontSize: 60.sp),
                      ),
                    ],
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: Icon(Icons.filter_list_rounded),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ///////////////third container////////////////////////////
            Container(
              width: 1200.w,
              height: 154.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).w,
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          width: 170.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).w,
                              color: mainColor.withOpacity(1)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '01 ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60.sp),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'MAR',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60.sp),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ////
                        Container(
                          width: 170.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5).w,
                              color: Colors.green[50]),
                          child: Center(
                              child: Text(
                            'NEW',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 60.sp,
                                fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
                  ),
                  //////////////////second column////////
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Records added by you',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 70.sp),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Record for Haider khan',
                        style: TextStyle(
                            color: Colors.green,
                            // fontWeight: FontWeight.bold,
                            fontSize: 60.sp),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '1 Prescription',
                        style: TextStyle(
                            color: Colors.black54,
                            // fontWeight: FontWeight.bold,
                            fontSize: 60.sp),
                      ),
                    ],
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: Icon(Icons.filter_list_rounded),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            ////////////////////////////////////////////////////////
            Container(
              width: 400.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5).w,
                  color: mainColor.withOpacity(1)),
              child: Center(
                child: Text(
                  'Add a record',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 60.sp),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
