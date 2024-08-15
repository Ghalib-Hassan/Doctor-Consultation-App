import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarPop extends StatelessWidget {
  final Color? textColor;
  final double? sizedWidth;
  final String? title;
  const AppbarPop({super.key, this.sizedWidth, this.title, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
        child: Row(children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 35.h,
              width: 25.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(const Radius.circular(5).w)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          SizedBox(
            width: sizedWidth ?? 20.w,
          ),
          Text(
            title ?? 'Title',
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: textColor ?? Colors.black),
          )
        ]));
  }
}
