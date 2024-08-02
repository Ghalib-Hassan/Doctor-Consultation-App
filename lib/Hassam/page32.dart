import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Hassam/page31.dart';
import 'package:doctor_consultation/Hassam/page33.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List main_gradient01 = [
  //////////Blue Gradient///////
  Color(0x2753F3).withOpacity(1),
  //////////Green Gradient///////
  Color(0x0EBE7E).withOpacity(1),
  //////////Orange Gradient///////
  Color(0xFE7F44).withOpacity(1),
  //////////Red Gradient/////////
  Color(0xFF484C).withOpacity(1),
];

List main_gradient02 = [
  //////////Blue Gradient///////
  Color(0x765AFC).withOpacity(1),
  //////////Green Gradient///////
  Color(0x07D9AD).withOpacity(1),
  //////////Orange Gradient///////
  Color(0xFFCF68).withOpacity(1),
  //////////Red Gradient/////////
  Color(0xFF6C60).withOpacity(1),
];

List stack01 = [
  //////////Blue//////////
  Color(0xFFFFFF).withOpacity(.06),
  //////////Green//////////
  Color(0xFFFFFF).withOpacity(.1),
  //////////Orange//////////
  Color(0xFFFFFF).withOpacity(.08),
  ////////Red/////////
  Color(0xFFFFFF).withOpacity(.08),
];
List stack02 = [
  //////////Blue//////////
  Color(0xFFFFFF).withOpacity(.04),
  //////////Green//////////
  Color(0xFFFFFF).withOpacity(.08),
  //////////Orange//////////
  Color(0xFFFFFF).withOpacity(.06),
  ////////Red/////////
  Color(0xFFFFFF).withOpacity(.06),
];
List stack_image = [
  'asset/Hassam/home.png',
  'asset/Hassam/profile.png',
  'asset/Hassam/reports.png',
  'asset/Hassam/doctor.png',
];
List<String> titles = [
  'Free home\nSample pickup',
  'Practo\nassociate labs',
  'E-Reports in\n24-72 hours',
  'Free follow-up\nwith a doctor'
];
List recommend = [
  'Advanced Young Indian Health Checkup',
  'Working Women’s Health Checkup',
  'Active Professional Health Checkup'
];
List recommend2 = [
  'Ideal for individuals aged 21-40 years',
  'Active Professional Health Checkup',
  'Working Women’s Health Checkup'
];
List tests = ['69 tests included', '119 tests included', '100 tests included'];
List images = [
  'asset/Hassam/1.jpeg',
  'asset/Hassam/2.jpeg',
  'asset/Hassam/3.jpeg',
];
List span1 = ['\$ 358', '\$ 387', '\$ 457'];
List span2 = ['\$ 330', '\$ 345', '\$ 411'];
List span3 = ['35% off', '35% off', '35% off'];

class DiagnosticTest extends StatefulWidget {
  const DiagnosticTest({super.key});

  @override
  State<DiagnosticTest> createState() => _DiagnosticTestState();
}

class _DiagnosticTestState extends State<DiagnosticTest> {
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Diagnostic()));
                    },
                    child: Container(
                      height: 40.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20).w)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  Text(
                    'Diagnostics Tests',
                    style: TextStyle(
                        fontSize: 80.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ])),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Get Full body health checkups from the comfort of your home.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 100.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Upto 45% off + get 10% healthcash back',
                    style: TextStyle(
                        color: Color(0x0EBE7F).withOpacity(1),
                        fontSize: 60.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 300.h,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      childAspectRatio: 2,
                      crossAxisSpacing: 3,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Stack(children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * .23,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            main_gradient01[index],
                                            main_gradient02[index],
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30).w)),
                                ),
                                Positioned(
                                  right: -30,
                                  top: 7,
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * .2,
                                    height: 80.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100).w),
                                        color: stack01[index]),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  bottom: -40,
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * .2,
                                    height: 80.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100).w),
                                        color: stack02[index]),
                                  ),
                                ),
                                Positioned(
                                    top: -20,
                                    left: 25,
                                    child: Image.asset(
                                      '${stack_image[index]}',
                                      width: 150.w,
                                      height: 150.h,
                                    ))
                              ]),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        titles[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 70.sp,
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ));
                    })),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Recommend for you',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 80.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1600.h,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 500.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10).w),
                          color: Colors.white.withOpacity(1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${recommend[index]}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 70.sp),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                '${recommend2[index]}',
                                style: TextStyle(
                                    color: Color(0x677294).withOpacity(1),
                                    fontSize: 50.sp),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                width: 350.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20).w),
                                    border: Border.all(
                                        width: .8,
                                        color: Color(0x0EBE7F).withOpacity(1))),
                                child: Center(
                                  child: Text(
                                    '${tests[index]}',
                                    style: TextStyle(
                                        color: Color(0x0EBE7F).withOpacity(1),
                                        fontSize: 50.sp),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20).w),
                                child: Image.asset(
                                    height: 300.h,
                                    width: MediaQuery.sizeOf(context).width,
                                    fit: BoxFit.cover,
                                    '${images[index]}'),
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                text: '${span1[index]} ',
                                                style: TextStyle(
                                                    fontSize: 70.sp,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: '${span2[index]} ',
                                                style: TextStyle(
                                                    fontSize: 70.sp,
                                                    color: Color(0x677294)
                                                        .withOpacity(1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: '${span3[index]}',
                                                style: TextStyle(
                                                    fontSize: 60.sp,
                                                    color: Color(0x0EBE7F)
                                                        .withOpacity(1)),
                                              ),
                                            ])),
                                          ],
                                        ),
                                        Text(
                                          '+ 10% Health cashback T&C',
                                          style: TextStyle(
                                              fontSize: 60.sp,
                                              color: Color(0x677294)
                                                  .withOpacity(1)),
                                        )
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Page03()));
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                .3,
                                        height: 60.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20).w),
                                            color:
                                                Color(0x0EBE7F).withOpacity(1)),
                                        child: Center(
                                            child: Text(
                                          'Book Now',
                                          style: TextStyle(fontSize: 70.sp),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ])
        ]),
      ),
    );
  }
}
