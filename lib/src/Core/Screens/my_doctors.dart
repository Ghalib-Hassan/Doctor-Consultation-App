import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Custom_Widgets/fav_icon.dart';
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
  'Dr. Tranquilli',
  'Dr. Bonebrake',
  'Dr. Luke Whitesell',
  'Dr. Shoemaker'
];
List desig = [
  'Specilist medicine',
  'Specilist Dentist',
  'Specilist Cardiology',
  'Specilist Patheology'
];
List experience = [
  '6 Years experience ',
  '8 Years experience ',
  '7 Years experience ',
  '5 Years experience '
];
List percent = ['87%', '59%', '57%', '87%'];
List stores = [
  '69 Patient Stories',
  '82 Patient Stories',
  '76 Patient Stories',
  '69 Patient Stories'
];
List time = ['10:00', '12:00', '11:00', '10:00'];

class MyDoctors extends StatefulWidget {
  const MyDoctors({super.key});

  @override
  State<MyDoctors> createState() => _MyDoctorsState();
}

class _MyDoctorsState extends State<MyDoctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Backgroundsplash(),
      SingleChildScrollView(
        child: Column(children: [
          AppbarPop(
            sizedWidth: 10.w,
            title: 'My Doctors',
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 13.sp, color: Colors.black),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                focusColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.cancel_outlined),
                hintText: 'search',
                hintStyle: TextStyle(fontSize: 10.sp, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(const Radius.circular(5).w),
                  borderSide: const BorderSide(color: Colors.white, width: 0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(const Radius.circular(5).w),
                  borderSide: const BorderSide(color: Colors.white, width: 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(const Radius.circular(5).w),
                  borderSide: const BorderSide(color: Colors.white, width: 0),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(const Radius.circular(5).w),
                  borderSide: const BorderSide(color: Colors.white, width: 0),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(const Radius.circular(5).w),
                  borderSide: const BorderSide(color: Colors.white, width: 0),
                ),
              ),
            ),
          ),
          Container(
              width: 195.w,
              height: 490.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.all(const Radius.circular(5).w),
              ),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 4, bottom: 4),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(3).w),
                                child: Image.asset(
                                  '${images[index]}',
                                  width: 60.w,
                                  height: 80.h,
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
                                        fontSize: 13.sp),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    '${desig[index]}',
                                    style: TextStyle(
                                        color: mainColor.withOpacity(.9),
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    '${experience[index]}',
                                    style: TextStyle(
                                        color: const Color(0x00677294)
                                            .withOpacity(1),
                                        fontSize: 9.sp),
                                  ),
                                  SizedBox(
                                    height: 5.h,
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
                                                fontSize: 9.sp),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10.w,
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
                                                fontSize: 9.sp),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const FavIcon(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Next Available',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: mainColor.withOpacity(1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 9.sp,
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
                              Buttons(
                                text: 'Book Now',
                                fontSize: 14.sp,
                                Cwidth: 70.w,
                                Cheight: 30.h,
                                onPressed: () {},
                                ButtonColor: mainColor.withOpacity(1),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          )
                        ],
                      ),
                    );
                  })),
        ]),
      ),
    ]));
  }
}
