import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Home_Screen/Favourite_Screen/favourite_screen.dart';
import 'package:doctor_consultation/Home_Screen/home_screen.dart';
import 'package:doctor_consultation/Onboarding_Screens/Onboarding_Screen_02/Doctor_Detail/Appointment/appointment02.dart';
import 'package:doctor_consultation/Onboarding_Screens/Onboarding_Screen_02/Doctor_Detail/doctor_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

List images = [
  'asset/Appointment/1.png',
  'asset/Appointment/2.png',
  'asset/Appointment/3.png',
  'asset/Appointment/4.png',
];
List names = ['My Self', 'My child', 'My wife'];

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  int _selectedIndex = 0;

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
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorDetail()));
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
                      width: 30.h,
                    ),
                    Text(
                      'Appointment',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 80.sp),
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                    width: 1100.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20).w),
                        color: Colors.white.withOpacity(1)),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20).w),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            color:
                                                Color(0x677294).withOpacity(1),
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
                                              color: Color(0x677294)
                                                  .withOpacity(1),
                                              fontSize: 45.sp),
                                        )
                                      ])
                                    ]),
                                favIcon()
                              ]),
                        ])))),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Appointment For',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 80.sp),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Patient Name',
                  style: TextStyle(
                      color: Color(0x677294).withOpacity(1), fontSize: 60.sp),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Contact Number',
                  style: TextStyle(
                      color: Color(0x677294).withOpacity(1), fontSize: 60.sp),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Who is this patient?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 80.sp),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 220.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20).w),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  '${images[index]}',
                                  width: 445.w,
                                  height: 170.h,
                                  fit: BoxFit.cover,
                                ),
                                if (index == 0)
                                  Container(
                                    width: 445.w,
                                    height: 170.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          size: 60,
                                          color: mainColor.withOpacity(1),
                                        ),
                                        Text(
                                          'Add',
                                          style: TextStyle(
                                            color: mainColor.withOpacity(1),
                                            fontSize: 70.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          if (index >= 1 && index - 1 < names.length)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                '${names[index - 1]}',
                                style: TextStyle(
                                  color: Color(0x677294).withOpacity(1),
                                  fontSize: 60.sp,
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor.withOpacity(1),
                  padding:
                      EdgeInsets.symmetric(horizontal: 340.w, vertical: 17),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13).w))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Appointment02()));
              },
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white, fontSize: 70.sp),
              ),
            )
          ])
        ]),
      ),
      bottomNavigationBar: MoltenBottomNavigationBar(
        domeCircleColor: mainColor.withOpacity(1),
        selectedIndex: _selectedIndex,
        domeHeight: 25,
        // specify what will happen when a tab is clicked
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
            if (clickedIndex == 0) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            } else if (clickedIndex == 1) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => FavouriteScreen()));
            }
          });
        },
        // insert as many tabs as you like
        tabs: [
          MoltenTab(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
            selectedColor: Colors.white,
            unselectedColor: mainColor.withOpacity(1),
          ),
          MoltenTab(
            icon: Icon(
              Icons.favorite,
            ),
            selectedColor: Colors.white,
            unselectedColor: mainColor.withOpacity(1),
          ),
          MoltenTab(
            icon: Icon(
              Icons.library_books,
            ),
            selectedColor: Colors.white,
            unselectedColor: mainColor.withOpacity(1),
          ),
          MoltenTab(
            icon: Icon(
              Icons.message,
            ),
            selectedColor: Colors.white,
            unselectedColor: mainColor.withOpacity(1),
          ),
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
