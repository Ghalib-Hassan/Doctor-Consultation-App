import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Onboarding_Screens/Onboarding_Screen_01/Book_Now/book_now_02.dart';
import 'package:doctor_consultation/Onboarding_Screens/Onboarding_Screen_01/find_doctors.dart';
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
                      MaterialPageRoute(builder: (context) => FindDoctors()));
                },
                child: Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20).w)),
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
                'Select Time',
                style: TextStyle(
                    fontSize: 80.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ])),
        SizedBox(
          height: 50.h,
        ),
        Container(
          width: 1100.w,
          height: 100.h,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(1),
              borderRadius: BorderRadius.all(Radius.circular(20).w)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20).w),
                  child: Image.asset(
                    width: 350.w,
                    height: 90.h,
                    'asset/Find-Doctors/one.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Shruti Kedia',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60.sp,
                          color: Colors.black),
                    ),
                    Text(
                      'Upasana Dental Clinic, salt lake',
                      style: TextStyle(
                          fontSize: 40.sp, color: Colors.black.withOpacity(.6)),
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
                favIcon()
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100.h,
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
        Text(
          'Today, 23 Feb',
          style: TextStyle(
              color: Colors.black,
              fontSize: 80.sp,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          'No slots available',
          style: TextStyle(
              color: Colors.blueAccent.withOpacity(.6), fontSize: 50.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BookNow02()));
          },
          child: Container(
            width: 1000.w,
            height: 80.h,
            decoration: BoxDecoration(
                color: mainColor.withOpacity(1),
                borderRadius: BorderRadius.all(Radius.circular(20).w)),
            child: Center(
              child: Text(
                'Next availability on wed, 24 Feb',
                style: TextStyle(fontSize: 80.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'OR',
          style:
              TextStyle(fontSize: 70.sp, color: Colors.black.withOpacity(.6)),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: 1000.w,
          height: 80.h,
          decoration: BoxDecoration(
              border: Border.all(color: mainColor.withOpacity(1), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20).w)),
          child: Center(
            child: Text(
              'Contact Clinic',
              style: TextStyle(
                  fontSize: 80.sp,
                  fontWeight: FontWeight.bold,
                  color: mainColor.withOpacity(1)),
            ),
          ),
        ),
      ]),
    ]));
  }
}

class selectedContainer extends StatefulWidget {
  final String date;
  final String slot;

  const selectedContainer({
    Key? key,
    required this.date,
    required this.slot,
  }) : super(key: key);

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
        width: 550.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20).w),
          color: isSelected ? mainColor.withOpacity(1) : Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.date,
              style: TextStyle(
                fontSize: 60.sp,
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.slot,
              style: TextStyle(
                fontSize: 40.sp,
                color: isSelected
                    ? Colors.white
                    : Colors.blueAccent.withOpacity(.7),
              ),
            ),
          ],
        ),
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
