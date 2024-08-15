import 'package:doctor_consultation/src/Core/Screens/patient_detail1.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List main_gradient01 = [
  //////////Blue Gradient///////
  const Color(0x002753f3).withOpacity(1),
  //////////Green Gradient///////
  const Color(0x000ebe7e).withOpacity(1),
  //////////Orange Gradient///////
  const Color(0x00fe7f44).withOpacity(1),
  //////////Red Gradient/////////
  const Color(0x00ff484c).withOpacity(1),
];

List main_gradient02 = [
  //////////Blue Gradient///////
  const Color(0x00765afc).withOpacity(1),
  //////////Green Gradient///////
  const Color(0x0007d9ad).withOpacity(1),
  //////////Orange Gradient///////
  const Color(0x00ffcf68).withOpacity(1),
  //////////Red Gradient/////////
  const Color(0x00ff6c60).withOpacity(1),
];

List stack01 = [
  //////////Blue//////////
  const Color(0x00ffffff).withOpacity(.06),
  //////////Green//////////
  const Color(0x00ffffff).withOpacity(.1),
  //////////Orange//////////
  const Color(0x00ffffff).withOpacity(.08),
  ////////Red/////////
  const Color(0x00ffffff).withOpacity(.08),
];
List stack02 = [
  //////////Blue//////////
  const Color(0x00ffffff).withOpacity(.04),
  //////////Green//////////
  const Color(0x00ffffff).withOpacity(.08),
  //////////Orange//////////
  const Color(0x00ffffff).withOpacity(.06),
  ////////Red/////////
  const Color(0x00ffffff).withOpacity(.06),
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
      body: Stack(children: [
        const Backgroundsplash(),
        SingleChildScrollView(
          child: Column(children: [
            AppbarPop(
              sizedWidth: 10.w,
              title: 'Diagnostics Tests',
            ),
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
                    fontSize: 15.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Upto 45% off + get 10% healthcash back',
                    style: TextStyle(
                        color: const Color(0x000ebe7f).withOpacity(1),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 180.h,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                                          const Radius.circular(5).w)),
                                ),
                                Positioned(
                                  right: -30,
                                  top: 17,
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * .2,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            const Radius.circular(150).w),
                                        color: stack01[index]),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  bottom: -30,
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * .2,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            const Radius.circular(150).w),
                                        color: stack02[index]),
                                  ),
                                ),
                                Positioned(
                                    top: 25,
                                    left: 17,
                                    child: Image.asset(
                                      '${stack_image[index]}',
                                      width: 28.w,
                                      height: 28.h,
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
                                            fontSize: 10.sp,
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
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1130.h,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 350.h,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10).w),
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
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                '${recommend2[index]}',
                                style: TextStyle(
                                    color:
                                        const Color(0x00677294).withOpacity(1),
                                    fontSize: 10.sp),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                width: 80.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        const Radius.circular(5).w),
                                    border: Border.all(
                                        width: .8,
                                        color: const Color(0x000ebe7f)
                                            .withOpacity(1))),
                                child: Center(
                                  child: Text(
                                    '${tests[index]}',
                                    style: TextStyle(
                                        color: const Color(0x000ebe7f)
                                            .withOpacity(1),
                                        fontSize: 9.sp),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(5).w),
                                child: Image.asset(
                                    height: 200.h,
                                    width: MediaQuery.sizeOf(context).width,
                                    fit: BoxFit.cover,
                                    '${images[index]}'),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                text: '${span1[index]} ',
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: '${span2[index]} ',
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color:
                                                        const Color(0x00677294)
                                                            .withOpacity(1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: '${span3[index]}',
                                                style: TextStyle(
                                                    fontSize: 9.sp,
                                                    color:
                                                        const Color(0x000ebe7f)
                                                            .withOpacity(1)),
                                              ),
                                            ])),
                                          ],
                                        ),
                                        Text(
                                          '+ 10% Health cashback T&C',
                                          style: TextStyle(
                                              fontSize: 8.sp,
                                              color: const Color(0x00677294)
                                                  .withOpacity(1)),
                                        )
                                      ],
                                    ),
                                    Buttons(
                                        Cwidth: 80.w,
                                        fontSize: 10.sp,
                                        text: 'Book Now',
                                        onPressed: () {
                                          navPush(
                                              context, const PatientDetail01());
                                        })
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
          ]),
        )
      ]),
    );
  }
}
