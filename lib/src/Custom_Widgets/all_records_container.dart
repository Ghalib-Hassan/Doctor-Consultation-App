import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainContainer extends StatefulWidget {
  final String dateno;
  final String month;
  const MainContainer({super.key, required this.dateno, required this.month});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 195.w,
      height: 110.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5).w, color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).w,
                      color: mainColor.withOpacity(1)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.dateno,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          widget.month,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ////
                Container(
                  width: 50.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).w,
                      color: Colors.green[50]),
                  child: Center(
                      child: Text(
                    'NEW',
                    style: TextStyle(
                        color: mainColor.withOpacity(1),
                        fontSize: 10.sp,
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
                    fontSize: 14.sp),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Record for Haider khan',
                style:
                    TextStyle(color: mainColor.withOpacity(1), fontSize: 10.sp),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                '1 Prescription',
                style: TextStyle(color: Colors.black54, fontSize: 8.sp),
              ),
            ],
          ),
          //
          const Padding(
            padding: EdgeInsets.only(top: 5, right: 3),
            child: Icon(
              Icons.more_vert_outlined,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
