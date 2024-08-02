// import 'package:doctor_consultation/Custom_Widgets/colors.dart';
// import 'package:doctor_consultation/Home_Screen/home_screen.dart';
// import 'package:doctor_consultation/Onboarding_Screens/Onboarding_Screen_01/Book_Now/book_now.dart';
import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List images = [
  'asset/assets/Find-Doctors/doctor_one.png',
  'asset/assets/Find-Doctors/doctor_two.png',
  'asset/assets/Find-Doctors/doctor_three.png',
  'asset/assets/Find-Doctors/doctor_four.png'
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
                borderRadius: BorderRadius.all(Radius.circular(250).w),
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
                borderRadius: BorderRadius.all(Radius.circular(250).w),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuScreen()));
                  },
                  child: Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10).w)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  'Find Doctors',
                  style: TextStyle(
                      fontSize: 80.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ])),
          ////////
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 50.sp, color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10).w,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                focusColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search,
                ),
                suffixIcon: Icon(
                  Icons.cancel_outlined,
                ),
                hintText: 'Dentist',
                hintStyle: TextStyle(fontSize: 50.sp, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10).w,
                  ),
                ),
              ),
            ),
          ),
          ///////////////////////

          Container(
              width: 1200.w,
              // width: double.infinity.w,
              height: 650.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.all(Radius.circular(20).w),
              ),
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10).w),
                                child: Image.asset(
                                  '${images[index]}',
                                  width: 350.w,
                                  height: 100.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
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
                                    height: 5.h,
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
                                        color:
                                            Colors.blueAccent.withOpacity(.7),
                                        fontSize: 50.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 15,
                                            color: mainColor.withOpacity(1),
                                          ),
                                          Text(
                                            '${percent[index]}',
                                            style: TextStyle(
                                                color: Colors.blueAccent
                                                    .withOpacity(.7),
                                                fontSize: 40.sp),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 75.w,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 15,
                                            color: mainColor.withOpacity(1),
                                          ),
                                          Text(
                                            '${stores[index]}',
                                            style: TextStyle(
                                                color: Colors.blueAccent
                                                    .withOpacity(.7),
                                                fontSize: 40.sp),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 150.w,
                              ),
                              favIcon()
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
                                        fontSize: 60.sp,
                                        color: mainColor.withOpacity(1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 30.sp,
                                              color: Colors.blueAccent),
                                          children: [
                                        TextSpan(
                                            text: '${time[index]} ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(text: 'AM '),
                                        TextSpan(text: 'Tomorrow'),
                                      ]))
                                ],
                              ),
                              Container(
                                width: 250.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                    color: mainColor.withOpacity(1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7).w)),
                                child: Center(
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 60.sp),
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

///////////////////////////////
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
        size: 25,
        color: fav ? Colors.red : Colors.black,
      ),
    );
  }
}
