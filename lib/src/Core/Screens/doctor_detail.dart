import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/Screens/appointment1.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Custom_Widgets/fav_icon.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Backgroundsplash(),
          Column(children: [
            AppbarPop(
              sizedWidth: 10.w,
              title: 'Doctor Details',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 195.w,
                height: 130.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(const Radius.circular(5).w),
                    color: Colors.white.withOpacity(1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(const Radius.circular(5).w),
                              child: Image.asset(
                                alignment: Alignment.topCenter,
                                'asset/Popular-Doctors/one-2.jpeg',
                                width: 60.w,
                                height: 65.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. Pediatrician',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    'Specialist Cardiologist ',
                                    style: TextStyle(
                                        color: const Color(0x00677294)
                                            .withOpacity(1),
                                        fontSize: 9.sp),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(children: [
                                    RatingBar(
                                      size: 25,
                                      filledIcon: Icons.star,
                                      emptyIcon: Icons.star_border,
                                      onRatingChanged: (value) =>
                                          debugPrint('$value'),
                                      initialRating: 3,
                                      maxRating: 5,
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(
                                      '\$ 28.00/hr',
                                      style: TextStyle(
                                          color: const Color(0x00677294)
                                              .withOpacity(1),
                                          fontSize: 8.sp),
                                    )
                                  ])
                                ]),
                            const FavIcon()
                          ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      Buttons(
                          Cwidth: 100.w,
                          text: 'Book Now',
                          fontSize: 12.sp,
                          onPressed: () {
                            navPush(context, const Appointment());
                          })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 190.w,
              height: 60.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(5).w),
                  color: Colors.white.withOpacity(1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '100',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Running',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0x00677294).withOpacity(1)),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '500',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Ongoing',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0x00677294).withOpacity(1)),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '700',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Patient',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0x00677294).withOpacity(1)),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Services',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              width: 190.w,
              height: 60.h,
              color: Colors.white.withOpacity(1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1.   Patient care should be the number one priority.',
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '2.   If you run your practiceyou know how frustrating.',
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '3.   That’s why some of appointment reminder system.',
                      style: TextStyle(color: Colors.black, fontSize: 9.sp),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(const Radius.circular(5).w),
              child: Image.asset(
                height: 180.h,
                width: 190.w,
                'asset/map.png',
                fit: BoxFit.cover,
              ),
            )
          ]),
        ],
      ),
    );
  }
}
