import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buttons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? Cheight;
  final double? Cwidth;
  final double? HorizontalPadding;
  final double? VerticalPadding;
  final Color? ButtonColor;
  final double? fontSize;
  const Buttons(
      {super.key,
      required this.text,
      required this.onPressed,
      this.Cheight,
      this.Cwidth,
      this.ButtonColor,
      this.HorizontalPadding,
      this.VerticalPadding,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Cheight ?? 50,
      width: Cwidth ?? 100,
      decoration: BoxDecoration(
        color: ButtonColor ?? mainColor.withOpacity(1),
        borderRadius: BorderRadius.circular(6.w),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: mainColor.withOpacity(1),
            padding: EdgeInsets.symmetric(
                horizontal: HorizontalPadding ?? 5.w,
                vertical: VerticalPadding ?? 3.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(const Radius.circular(6).w),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize ?? 18.sp,
            ),
          )),
    );
  }
}
