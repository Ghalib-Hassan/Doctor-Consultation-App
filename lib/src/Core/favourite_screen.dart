import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar1.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/fav_icon.dart';
import 'package:doctor_consultation/src/Feature/Auth_Screens/signup.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:doctor_consultation/src/Utils/navigatePushReplacement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

List images = [
  'asset/Home-Screen/feature-dr-1.jpeg',
  'asset/Home-Screen/dr-grab.jpeg',
  'asset/Live-Screen/dr.jpeg',
  'asset/Home-Screen/feature-dr-3.jpeg',
];
List names = ['Dr. Shouey', 'Dr. Christenfeld N', 'Dr. Shouey', 'Dr. Shouey'];
List occupation = [
  'Specalist Cardiology',
  'Specalist Cancer',
  'Specalist Medicine ',
  'Specalist Dentist'
];

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

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Backgroundsplash(),
        SingleChildScrollView(
          child: Column(children: [
            Appbar1(
              page: const HomeScreen(),
              sizedWidth: 10.w,
              title: 'Favourite Doctors',
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 13.sp, color: Colors.black),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(5).w,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                  hintStyle: TextStyle(fontSize: 13.sp, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(5).w,
                    ),
                  ),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8, // Adjust the aspect ratio if needed
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250.w,
                    height: 180.h,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(5).w),
                      color: Colors.white.withOpacity(1),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0, top: 10),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: FavIcon(),
                          ),
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(50).w),
                          child: Image.asset(
                            '${images[index]}',
                            height: 90.h,
                            width: 60.w,
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          '${names[index]}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                        Text(
                          '${occupation[index]}',
                          style: TextStyle(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 9.sp),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feature Doctor',
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
                            color: Colors.black.withOpacity(.7),
                            fontSize: 12.sp),
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
                height: 150.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(3).w),
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
                                    const FavIcon(),
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
                                          width: 3.w,
                                        ),
                                        Text(
                                          '${feature_dr_rating[index]}',
                                          style: TextStyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 30.r,
                                backgroundImage: AssetImage(
                                  '${feature_dr_image[index]}',
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                '${feature_dr_name[index]}',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${feature_dr_price[index]}',
                                style: TextStyle(
                                    fontSize: 9.sp, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ]),
        ),
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
