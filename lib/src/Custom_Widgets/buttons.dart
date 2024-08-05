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
  const Buttons(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.Cheight,
      required this.Cwidth,
      required this.ButtonColor,
      required this.HorizontalPadding,
      required this.VerticalPadding});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Cheight ?? 50,
        width: Cwidth ?? 100,
        decoration:
            BoxDecoration(color: ButtonColor ?? mainColor.withOpacity(1)),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: mainColor.withOpacity(1),
                padding: EdgeInsets.symmetric(
                    horizontal: HorizontalPadding ?? 100.w,
                    vertical: VerticalPadding ?? 17.h),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(const Radius.circular(20).w))),
            onPressed: () {},
            child: Text(text)),
      ),
    );
  }
}
