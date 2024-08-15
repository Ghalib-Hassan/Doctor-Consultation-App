import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Backgroundsplash(),
      SingleChildScrollView(
        child: Column(children: [
          AppbarPop(
            sizedWidth: 10.w,
            title: 'Privacy policy',
          ),
          SizedBox(
            width: 190.w,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Doctor Hunt Apps Privacy Policy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color(0x00677294).withOpacity(1),
                        fontSize: 12.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ',
                            style: TextStyle(
                                color: const Color(0x00959cb4).withOpacity(.8),
                                fontSize: 10.sp)),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'asset/Hassam/Group1.png',
                              filterQuality: FilterQuality.high,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                                'It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.',
                                style: TextStyle(
                                    color:
                                        const Color(0x00959cb4).withOpacity(.8),
                                    fontSize: 10.sp)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    ]));
  }
}
