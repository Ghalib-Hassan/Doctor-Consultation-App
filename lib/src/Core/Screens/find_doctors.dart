import 'package:doctor_consultation/src/Core/Screens/book_now1.dart';
import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List images = [
  'asset/Find-Doctors/one.jpeg',
  'asset/Find-Doctors/two.jpeg',
  'asset/Find-Doctors/three.jpeg',
  'asset/Find-Doctors/four.jpeg',
];
List name = [
  'Dr. Shruti Kedia',
  'Dr. Watamaniuk',
  'Dr. Crownover',
  'Dr. Balestra'
];
List experience = [
  '7 Years experience ',
  '9 Years experience ',
  '5 Years experience ',
  '6 Years experience '
];
List percent = ['87%', '74%', '59%', '87%'];
List stores = [
  '69 Patient Stories',
  '78 Patient Stories',
  '86 Patient Stories',
  '69 Patient Stories'
];
List time = ['10:00', '12:00', '11:00', '10:00'];

class FindDoctors extends StatefulWidget {
  const FindDoctors({super.key});

  @override
  State<FindDoctors> createState() => _FindDoctorsState();
}

class _FindDoctorsState extends State<FindDoctors> {
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
              child: Row(children: [
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
                SizedBox(
                  width: 80.w,
                ),
                Text(
                  'Find Doctors',
                  style: TextStyle(
                      fontSize: 80.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ])),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 50.sp, color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(20).w,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                focusColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.search,
                ),
                suffixIcon: const Icon(
                  Icons.cancel_outlined,
                ),
                hintText: 'Dentist',
                hintStyle: TextStyle(fontSize: 50.sp, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    const Radius.circular(20).w,
                  ),
                ),
              ),
            ),
          ),
          Container(
              width: 1100.w,
              height: 650.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.all(const Radius.circular(20).w),
              ),
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(20).w),
                                child: Image.asset(
                                  '${images[index]}',
                                  width: 400.w,
                                  height: 100.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${name[index]}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 70.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'Tooths Dentist',
                                    style: TextStyle(
                                        color: mainColor.withOpacity(.9),
                                        fontSize: 50.sp),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    '${experience[index]}',
                                    style: TextStyle(
                                        color: const Color(0x00677294)
                                            .withOpacity(1),
                                        fontSize: 50.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: mainColor.withOpacity(1),
                                          ),
                                          Text(
                                            '${percent[index]}',
                                            style: TextStyle(
                                                color: const Color(0x00677294)
                                                    .withOpacity(1),
                                                fontSize: 30.sp),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 50.w,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: mainColor.withOpacity(1),
                                          ),
                                          Text(
                                            '${stores[index]}',
                                            style: TextStyle(
                                                color: const Color(0x00677294)
                                                    .withOpacity(1),
                                                fontSize: 30.sp),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const favIcon()
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Next Available',
                                    style: TextStyle(
                                        fontSize: 50.sp,
                                        color: mainColor.withOpacity(1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 30.sp,
                                              color: const Color(0x00677294)
                                                  .withOpacity(1)),
                                          children: [
                                        TextSpan(
                                            text: '${time[index]} ',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        const TextSpan(text: 'AM '),
                                        const TextSpan(text: 'Tomorrow'),
                                      ]))
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BookNow()));
                                },
                                child: Container(
                                  width: 350.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                      color: mainColor.withOpacity(1),
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(20).w)),
                                  child: Center(
                                    child: Text(
                                      'Book Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 60.sp),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          )
                        ],
                      ),
                    );
                  })),
          SizedBox(
            height: 20.h,
          ),
        ]),
      ]),
    ));
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
