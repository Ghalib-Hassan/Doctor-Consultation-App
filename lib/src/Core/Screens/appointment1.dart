import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/Screens/appointment02.dart';
import 'package:doctor_consultation/src/Core/favourite_screen.dart';
import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Custom_Widgets/fav_icon.dart';
import 'package:doctor_consultation/src/Feature/Auth_Screens/signup.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:doctor_consultation/src/Utils/navigatePushReplacement.dart';
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
      body: Stack(children: [
        const Backgroundsplash(),
        SingleChildScrollView(
          child: Column(children: [
            AppbarPop(
              title: 'Appointment',
              sizedWidth: 10.w,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                    width: 195.w,
                    height: 78.h,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5).w),
                        color: Colors.white.withOpacity(1)),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(5).w),
                                  child: Image.asset(
                                    alignment: Alignment.topCenter,
                                    'asset/Popular-Doctors/one-2.jpeg',
                                    width: 60.w,
                                    height: 65.h,
                                    fit: BoxFit.cover,
                                  ),
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
                        ])))),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 50),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Appointment For',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Patient Name',
                    labelStyle: TextStyle(
                        color: const Color(0x00677294).withOpacity(1),
                        fontSize: 13.sp)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Contact Number',
                    labelStyle: TextStyle(
                        color: const Color(0x00677294).withOpacity(1),
                        fontSize: 13.sp)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 50),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Who is this patient?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 140.h,
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
                                BorderRadius.all(const Radius.circular(5).w),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  '${images[index]}',
                                  width: 60.w,
                                  height: 100.h,
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.topCenter,
                                ),
                                if (index == 0)
                                  SizedBox(
                                    width: 60.w,
                                    height: 80.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          size: 30,
                                          color: mainColor.withOpacity(1),
                                        ),
                                        Text(
                                          'Add',
                                          style: TextStyle(
                                            color: mainColor.withOpacity(1),
                                            fontSize: 12.sp,
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
                                  color: const Color(0x00677294).withOpacity(1),
                                  fontSize: 14.sp,
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
            Buttons(
                text: 'Next',
                Cwidth: 150.w,
                onPressed: () {
                  navPush(context, const Appointment02());
                }),
            SizedBox(
              height: 20.h,
            )
          ]),
        )
      ]),
      bottomNavigationBar: MoltenBottomNavigationBar(
        domeCircleColor: mainColor.withOpacity(1),
        selectedIndex: _selectedIndex,
        domeHeight: 25,
        // specify what will happen when a tab is clicked
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
            if (clickedIndex == 0) {
              pushReplacement(context, const HomeScreen());
            } else if (clickedIndex == 1) {
              pushReplacement(context, const FavouriteScreen());
            } else if (clickedIndex == 3) {
              pushReplacement(context, const Signup());
            }
          });
        },
        // insert as many tabs as you like
        tabs: [
          MoltenTab(
            icon: const Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            selectedColor: Colors.white,
            unselectedColor: mainColor.withOpacity(1),
          ),
          MoltenTab(
            icon: const Icon(
              Icons.favorite,
            ),
            selectedColor: Colors.white,
            unselectedColor: mainColor.withOpacity(1),
          ),
          MoltenTab(
            icon: const Icon(
              Icons.library_books,
            ),
            selectedColor: Colors.white,
            unselectedColor: mainColor.withOpacity(1),
          ),
          MoltenTab(
            icon: const Icon(
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
