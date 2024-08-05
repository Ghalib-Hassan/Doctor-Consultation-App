import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/Screens/doctor_detail.dart';
import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
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
        body: SingleChildScrollView(
            child: Stack(children: [
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      height: 40.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(const Radius.circular(20).w)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search,
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
                    fontSize: 80.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.7), fontSize: 50.sp),
                  ),
                  const Icon(Icons.arrow_right_rounded)
                ],
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 0),
            child: SizedBox(
                height: 220.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(left: 18, top: 10),
                          child: Column(children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(const Radius.circular(20).w),
                              child: Image.asset(
                                '${images[index]}',
                                width: 400.w,
                                height: 100.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              '${names[index]}',
                              style: TextStyle(
                                  fontSize: 70.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${occupation[index]}',
                              style: TextStyle(
                                  fontSize: 30.sp,
                                  color:
                                      const Color(0x00677294).withOpacity(1)),
                            ),
                            RatingBar(
                              size: 20,
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              onRatingChanged: (value) => debugPrint('$value'),
                              initialRating: 3,
                              maxRating: 5,
                            ),
                          ]));
                    }))),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              Text(
                'Category',
                style: TextStyle(
                    fontSize: 80.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 500.h,
          child: Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoctorDetail()));
                        },
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(20).w),
                                  child: Image.asset(
                                    alignment: Alignment.topCenter,
                                    '${images2[index]}',
                                    width: 400.w,
                                    height: 100.h,
                                    fit: BoxFit.cover,
                                  ),
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
                                            fontSize: 70.sp),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        '${occupation2[index]}',
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
                                        RichText(
                                            text: TextSpan(
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        const Color(0x00677294)
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
                                const favIcon()
                              ]),
                          SizedBox(
                            height: 30.h,
                          )
                        ]),
                      ));
                }),
          ),
        )
      ]),
    ])));
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
