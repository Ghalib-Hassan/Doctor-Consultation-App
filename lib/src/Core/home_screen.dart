import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/Screens/find_doctors.dart';
import 'package:doctor_consultation/src/Core/Screens/menu_screen.dart';
import 'package:doctor_consultation/src/Core/favourite_screen.dart';
import 'package:doctor_consultation/src/Core/live_screen.dart';
import 'package:doctor_consultation/src/Core/popular_doctor.dart';
import 'package:doctor_consultation/src/Feature/Auth_Screens/signup.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

List images = [
  'asset/home-screen-live01.jpeg',
  'asset/home-screen-live02.jpeg',
  'asset/home-screen-live03.jpeg'
];
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
  'asset/Home-Screen/tooth.png',
  'asset/Home-Screen/heart.png',
  'asset/Home-Screen/eye.png',
  'asset/Home-Screen/exercise.png',
];

List popular_dr = [
  'asset/Home-Screen/dr-grab.jpeg',
  'asset/Home-Screen/dr-blessing.jpeg',
];
List popular_dr_name = ['Dr. Fillerup Grab', 'Dr. Blessing'];
List popular_dr_occupation = ['Medicine Specialist', 'Dentist Specialist'];
List feature_dr_rating = ['3.7', '3.0', '2.9', '2.2'];
List feature_dr_image = [
  'asset/Home-Screen/feature-dr-1.jpeg',
  'asset/Home-Screen/feature-dr-2.jpeg',
  'asset/Home-Screen/feature-dr-3.jpeg',
  'asset/Home-Screen/feature-dr-1.jpeg',
];
List feature_dr_name = [
  'Dr. Crick',
  'Dr. Strain',
  'Dr. Lachinet',
  'Dr. Crick',
];
List feature_dr_price = [
  '\$ 25.00/ hours',
  '\$ 22.00/ hours',
  '\$ 29.00/ hours',
  '\$ 25.00/ hours',
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 280.w,
                  height: 270.h,
                  decoration: BoxDecoration(
                      color: splashColor.withOpacity(0.1),
                      borderRadius:
                          BorderRadius.all(const Radius.circular(250).w),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 100,
                            spreadRadius: 150,
                            color: splashColor.withOpacity(.7))
                      ]),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 200.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            mainColor.withOpacity(1),
                            mainColor.withOpacity(.4)
                          ]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(50).w,
                          bottomRight: const Radius.circular(50).w)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Hi Handwerker!\n',
                              style: TextStyle(
                                  fontSize: 40.sp,
                                  color: Colors.white.withOpacity(.7))),
                          TextSpan(
                              text: 'Find Your Doctor',
                              style: TextStyle(
                                  fontSize: 50.sp, fontWeight: FontWeight.bold))
                        ]),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MenuScreen()));
                        },
                        child: CircleAvatar(
                          backgroundImage: const AssetImage(
                              'asset/home-screen-profile.jpeg'),
                          radius: 180.r,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FindDoctors()));
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * .8,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(const Radius.circular(15).w)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.search_outlined,
                                    color:
                                        const Color(0x00677294).withOpacity(1),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Search.....',
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        color: const Color(0x00677294)
                                            .withOpacity(1)),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.close,
                                color: const Color(0x00677294).withOpacity(1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 18),
              child: Text(
                'Live Doctors',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 8),
              child: SizedBox(
                height: 200.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Stack(children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LiveScreen()));
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * .4,
                              height: 300.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(20).w),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(10).w),
                                child: Image.asset(
                                  '${images[index]}',
                                  alignment: Alignment.centerLeft,
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -15,
                            top: -10,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LiveScreen()));
                                },
                                child: Container(
                                  width: 170.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(5).w)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          size: 13,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text(
                                          'Live',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 30.sp),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * .4,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LiveScreen()));
                                    },
                                    child: Container(
                                      width: 80.w,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            const Radius.circular(50).w),
                                        color: Colors.black,
                                      ),
                                      child: const Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ]),
                          )
                        ]),
                      );
                    }),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 100.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Stack(children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * .25,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            main_gradient01[index],
                                            main_gradient02[index],
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight),
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(10).w)),
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
                                            const Radius.circular(100).w),
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
                                            const Radius.circular(100).w),
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
                              ]));
                        }))),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PopularDoctor()));
                    },
                    child: Row(
                      children: [
                        Text(
                          'See all',
                          style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 50.sp),
                        ),
                        const Icon(Icons.arrow_right_rounded)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                height: 280.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PopularDoctor()));
                            },
                            child: SizedBox(
                              width: 700.w,
                              height: 157.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(30).w,
                                    topRight: const Radius.circular(30).w),
                                child: Image.asset(
                                  '${popular_dr[index]}',
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PopularDoctor()));
                            },
                            child: Text(
                              '${popular_dr_name[index]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 80.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            '${popular_dr_occupation[index]}',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 50.sp,
                            ),
                          ),
                          RatingBar(
                            size: 25,
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border_outlined,
                            onRatingChanged: (value) => debugPrint('$value'),
                            initialRating: 3,
                            maxRating: 5,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 18, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feature Doctor',
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
                            color: Colors.black.withOpacity(.7),
                            fontSize: 50.sp),
                      ),
                      const Icon(Icons.arrow_right_rounded)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 400.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(30).w),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const favIcon(),
                                    Row(
                                      children: [
                                        RatingBar(
                                          size: 25,
                                          filledIcon: Icons.star,
                                          emptyIcon: Icons.star_border_outlined,
                                          onRatingChanged: (value) =>
                                              debugPrint('$value'),
                                          initialRating: 1,
                                          maxRating: 1,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${feature_dr_rating[index]}',
                                          style: TextStyle(
                                              fontSize: 70.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 130.r,
                                backgroundImage: AssetImage(
                                  '${feature_dr_image[index]}',
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                '${feature_dr_name[index]}',
                                style: TextStyle(
                                    fontSize: 50.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${feature_dr_price[index]}',
                                style: TextStyle(
                                    fontSize: 50.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
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
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            } else if (clickedIndex == 1) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavouriteScreen()));
            } else if (clickedIndex == 3) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Signup()));
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
