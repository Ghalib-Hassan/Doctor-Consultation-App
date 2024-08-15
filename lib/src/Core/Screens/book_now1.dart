import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/Screens/book_now_02.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/fav_icon.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List date = ['Today, 23 Feb', 'Tomorrow, 24 Feb', 'Thu, 25 Feb'];
List slots = ['No slots available', '9 slots available', '10 slots available'];

class BookNow extends StatefulWidget {
  const BookNow({super.key});

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Backgroundsplash(),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AppbarPop(
          title: 'Select Time',
          sizedWidth: 10.w,
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 190.w,
            height: 100.h,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.all(const Radius.circular(5).w)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(const Radius.circular(5).w),
                    child: Image.asset(
                      width: 60.w,
                      height: 90.h,
                      'asset/Find-Doctors/one.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 9.h,
                      ),
                      Text(
                        'Dr. Shruti Kedia',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Text(
                        'Upasana Dental Clinic, salt lake',
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: const Color(0x00677294).withOpacity(1)),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      RatingBar(
                        size: 20,
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        onRatingChanged: (value) => debugPrint('$value'),
                        initialRating: 3,
                        maxRating: 5,
                      )
                    ],
                  ),
                  const FavIcon()
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80.h,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: selectedContainer(
                        date: date[index],
                        slot: slots[index],
                      ),
                    );
                  }),
            ),
          ),
        ),
        SizedBox(
          width: 200.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Today, 23 Feb',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'No slots available',
                style: TextStyle(
                    color: const Color(0x00677294).withOpacity(1),
                    fontSize: 9.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  navPush(context, const BookNow02());
                },
                child: Container(
                  width: 150.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: mainColor.withOpacity(1),
                      borderRadius:
                          BorderRadius.all(const Radius.circular(5).w)),
                  child: Center(
                    child: Text(
                      'Next availability on wed, 24 Feb',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'OR',
                style: TextStyle(
                    fontSize: 10.sp, color: Colors.black.withOpacity(.6)),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 150.w,
                height: 60.h,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: mainColor.withOpacity(1), width: 2),
                    borderRadius: BorderRadius.all(const Radius.circular(5).w)),
                child: Center(
                  child: Text(
                    'Contact Clinic',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: mainColor.withOpacity(1)),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    ]));
  }
}

class selectedContainer extends StatefulWidget {
  final String date;
  final String slot;

  const selectedContainer({
    super.key,
    required this.date,
    required this.slot,
  });

  @override
  _selectedContainerState createState() => _selectedContainerState();
}

class _selectedContainerState extends State<selectedContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(5).w),
          color: isSelected ? mainColor.withOpacity(1) : Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.date,
              style: TextStyle(
                fontSize: 14.sp,
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.slot,
              style: TextStyle(
                fontSize: 9.sp,
                color: isSelected
                    ? Colors.white
                    : const Color(0x00677294).withOpacity(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
