import 'package:doctor_consultation/src/Core/Screens/all_records.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
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
      body: Stack(children: [
        const Backgroundsplash(),
        SingleChildScrollView(
          child: Column(
            children: [
              AppbarPop(
                sizedWidth: 10.w,
                title: 'Add Records',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70.w,
                      height: 133.h,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(4).w),
                          color: Colors.green[200]),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(4).w),
                        child: Image.asset(
                          'asset/assets/image/child.webp',
                          scale: 1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      width: 70.w,
                      height: 142.h,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(4).w),
                          color: Colors.green[100]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: mainColor.withOpacity(1),
                            size: 40,
                          ),
                          Text(
                            'Add more images',
                            style:
                                TextStyle(color: Colors.green, fontSize: 14.sp),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Container(
                width: double.infinity.w,
                height: 340.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20).w,
                      topRight: const Radius.circular(20).w,
                    ),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Color(0xFFECE7E7))
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
                                    color: Colors.black, fontSize: 10.sp),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Haider khan khalil',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.sp),
                              )
                            ],
                          ),
                          const Icon(Icons.colorize_outlined)
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(),
                      //////////////////
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Type of record',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10.sp),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.insert_page_break,
                                        color: Color(0xFF5C5858),
                                      ),
                                      Text(
                                        'Report',
                                        style: TextStyle(
                                            color: const Color(0xFF5C5858),
                                            fontSize: 14.sp),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25.w,
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
                                            fontSize: 14.sp),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  ///////////
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.receipt,
                                        color: Color(0xFF5C5858),
                                      ),
                                      Text(
                                        'Invoice',
                                        style: TextStyle(
                                            color: const Color(0xFF5C5858),
                                            fontSize: 14.sp),
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
                        height: 10.h,
                      ),
                      const Divider(),
                      //////////////////
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Record created on',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10.sp)),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                '27 Feb, 2021',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp),
                              )
                            ],
                          ),
                          const Icon(Icons.colorize_outlined)
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Buttons(
                          Cwidth: 130.w,
                          fontSize: 14.sp,
                          text: 'Upload record',
                          onPressed: () {
                            _showAddRecordsDialog(context);
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
/////////////////////////showing nextpage dialog box/////////////////

void _showAddRecordsDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Makes the modal size as per content
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add a Record',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () => navPush(context, const AllRecords()),
                  child: Row(
                    children: [
                      const Icon(Icons.camera_alt_rounded, color: Colors.black),
                      SizedBox(width: 10.w),
                      Text(
                        'Take a photo',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () => navPush(context, const AllRecords()),
                  child: Row(
                    children: [
                      const Icon(Icons.photo_outlined, color: Colors.black),
                      SizedBox(width: 10.w),
                      Text(
                        'Upload from gallery',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () => navPush(context, const AllRecords()),
                  child: Row(
                    children: [
                      const Icon(Icons.picture_as_pdf_outlined,
                          color: Colors.black),
                      SizedBox(width: 10.w),
                      Text(
                        'Upload files',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
