import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OnboardingButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: mainColor.withOpacity(1),
          padding: EdgeInsets.symmetric(horizontal: 140.w, vertical: 17),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(13).w))),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 70.sp),
      ),
    );
  }
}
