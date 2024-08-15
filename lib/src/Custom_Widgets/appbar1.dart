import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appbar1 extends StatelessWidget {
  final Widget page;
  final double? sizedWidth;
  final String? title;
  const Appbar1({super.key, required this.page, this.sizedWidth, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
        child: Row(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page));
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
                color: Colors.black),
          )
        ]));
  }
}
