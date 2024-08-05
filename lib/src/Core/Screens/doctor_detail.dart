import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/Screens/appointment1.dart';
import 'package:doctor_consultation/src/Core/popular_doctor.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
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
          Positioned(
            top: 750,
            right: -60,
            child: Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                  color: splashColor.withOpacity(0.1),
                  borderRadius: BorderRadius.all(const Radius.circular(250).w),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 100,
                        spreadRadius: 150,
                        color: splashColor.withOpacity(.7))
                  ]),
            ),
          ),
          Positioned(
            top: -30,
            left: -60,
            child: Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                  color: splashColor.withOpacity(0.1),
                  borderRadius: BorderRadius.all(const Radius.circular(250).w),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 100,
                        spreadRadius: 150,
                        color: splashColor.withOpacity(.7))
                  ]),
            ),
          ),
          Column(children: [
            Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PopularDoctor()));
                            },
                            child: Container(
                              height: 40.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(20).w)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_back_ios),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.h,
                          ),
                          Text(
                            'Doctor Details',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 80.sp),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.search,
                      ),
                    ])),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 1100.w,
                height: 170.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(const Radius.circular(20).w),
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
                                  BorderRadius.all(const Radius.circular(20).w),
                              child: Image.asset(
                                alignment: Alignment.topCenter,
                                'asset/Popular-Doctors/one-2.jpeg',
                                width: 400.w,
                                height: 100.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. Pediatrician',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 70.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'Specialist Cardiologist ',
                                    style: TextStyle(
                                        color: const Color(0x00677294)
                                            .withOpacity(1),
                                        fontSize: 50.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(children: [
                                    RatingBar(
                                      size: 20,
                                      filledIcon: Icons.star,
                                      emptyIcon: Icons.star_border,
                                      onRatingChanged: (value) =>
                                          debugPrint('$value'),
                                      initialRating: 3,
                                      maxRating: 5,
                                    ),
                                    SizedBox(
                                      width: 70.w,
                                    ),
                                    Text(
                                      '\$ 28.00/hr',
                                      style: TextStyle(
                                          color: const Color(0x00677294)
                                              .withOpacity(1),
                                          fontSize: 45.sp),
                                    )
                                  ])
                                ]),
                            const favIcon()
                          ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Appointment()));
                        },
                        child: Container(
                          width: 350.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: mainColor.withOpacity(1),
                              borderRadius: BorderRadius.all(
                                  const Radius.circular(20).w)),
                          child: Center(
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                  fontSize: 60.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 1100.w,
              height: 100.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(20).w),
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
                            fontSize: 80.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Running',
                        style: TextStyle(
                            fontSize: 40.sp,
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
                            fontSize: 80.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Ongoing',
                        style: TextStyle(
                            fontSize: 40.sp,
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
                            fontSize: 80.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Patient',
                        style: TextStyle(
                            fontSize: 40.sp,
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
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: [
                  Text(
                    'Services',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80.sp,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              width: 1100.w,
              height: 100.h,
              color: Colors.white.withOpacity(1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1.   Patient care should be the number one priority.',
                      style: TextStyle(color: Colors.black, fontSize: 50.sp),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      '2.   If you run your practiceyou know how frustrating.',
                      style: TextStyle(color: Colors.black, fontSize: 50.sp),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      '3.   That’s why some of appointment reminder system.',
                      style: TextStyle(color: Colors.black, fontSize: 50.sp),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(const Radius.circular(20).w),
              child: Image.asset(
                height: 250.h,
                width: 1100.w,
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

class favIcon extends StatefulWidget {
  const favIcon({
    super.key,
  });

  @override
  State<favIcon> createState() => _favIconState();
}

class _favIconState extends State<favIcon> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          fav = !fav;
        });
      },
      child: Icon(
        fav ? Icons.favorite : Icons.favorite_outline,
        color: fav ? Colors.red : Colors.black,
      ),
    );
  }
}
