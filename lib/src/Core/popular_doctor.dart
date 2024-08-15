import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/Screens/doctor_detail.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/fav_icon.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List images = [
  'asset/Popular-Doctors/one.jpeg',
  'asset/Popular-Doctors/two.jpeg',
  'asset/Popular-Doctors/three.jpeg',
];
List names = ['Dr. Truluck Nik', 'Dr. Tranquilli', 'Dr. Truluck Nik'];
List occupation = [
  'Medicine Specialist',
  'Patheology Specialist',
  'Medicine Specialist'
];

List images2 = [
  'asset/Popular-Doctors/one-2.jpeg',
  'asset/Popular-Doctors/three.jpeg',
  'asset/Popular-Doctors/three-2.jpeg',
  'asset/Popular-Doctors/two.jpeg',
];
List names2 = [
  'Dr. Pediatrician',
  'Dr. Mistry Brick',
  'Dr. Ether Wall',
  'Dr. Johan smith'
];
List occupation2 = [
  'Specialist Cardiologist ',
  'Specialist Dentist ',
  'Specialist Cancer',
  'Specialist cardiologist'
];
List rating = ['2.4', '2.8', '2.7', '2.5'];
List reviews = ['(2475 views)', '(2893 views)', '(2754 views)', '(2821 views)'];

class PopularDoctor extends StatefulWidget {
  const PopularDoctor({super.key});

  @override
  State<PopularDoctor> createState() => _PopularDoctorState();
}

class _PopularDoctorState extends State<PopularDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Backgroundsplash(),
      SingleChildScrollView(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 35.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(const Radius.circular(5).w)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ])),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Doctor',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.black.withOpacity(.7), fontSize: 12.sp),
                    ),
                    const Icon(Icons.arrow_right_rounded)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
              height: 150.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(left: 18, top: 10),
                        child: Column(children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(5).w),
                            child: Image.asset(
                              '${images[index]}',
                              width: 80.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${names[index]}',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${occupation[index]}',
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: const Color(0x00677294).withOpacity(1)),
                          ),
                          RatingBar(
                            size: 25,
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            onRatingChanged: (value) => debugPrint('$value'),
                            initialRating: 3,
                            maxRating: 5,
                          ),
                        ]));
                  })),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(
            height: 360.h,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          navPush(context, const DoctorDetail());
                        },
                        child: Column(children: [
                          Container(
                            height: 70.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(const Radius.circular(5).w),
                              color: Colors.white.withOpacity(1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(5).w),
                                      child: Image.asset(
                                        alignment: Alignment.topCenter,
                                        '${images2[index]}',
                                        width: 50.w,
                                        height: 65.h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${names2[index]}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13.sp),
                                          ),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          Text(
                                            '${occupation2[index]}',
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
                                            RichText(
                                                text: TextSpan(
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color(
                                                                0x00677294)
                                                            .withOpacity(1)),
                                                    children: [
                                                  TextSpan(
                                                      text: '${rating[index]}',
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black)),
                                                  TextSpan(
                                                      text: '${reviews[index]}')
                                                ])),
                                          ])
                                        ]),
                                    const FavIcon()
                                  ]),
                            ),
                          ),
                        ]),
                      ));
                }),
          )
        ]),
      ),
    ]));
  }
}
