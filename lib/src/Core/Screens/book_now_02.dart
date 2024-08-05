import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:doctor_consultation/src/Core/Screens/book_now1.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List date = ['Today, 23 Feb', 'Tomorrow, 24 Feb', 'Thu, 25 Feb'];
List slots = ['No slots available', '9 slots available', '10 slots available'];
List time = ['1:00 PM', '1:30 PM', '2:00 PM', '2:30 PM'];
List time2 = ['3:00 PM', '3:30 PM', '4:00 PM'];
List time3 = ['5:00 PM', '5:30 PM', '6:00 PM', '6:30 PM'];
List time4 = ['7:00 PM'];

class BookNow02 extends StatefulWidget {
  const BookNow02({super.key});

  @override
  State<BookNow02> createState() => _BookNow02State();
}

class _BookNow02State extends State<BookNow02> {
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
              borderRadius: BorderRadius.all(const Radius.circular(250).w),
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
              borderRadius: BorderRadius.all(const Radius.circular(250).w),
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
                      MaterialPageRoute(builder: (context) => const BookNow()));
                },
                child: Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.all(const Radius.circular(20).w)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
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
              borderRadius: BorderRadius.all(const Radius.circular(20).w)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(const Radius.circular(20).w),
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
                          fontSize: 40.sp,
                          color: const Color(0x00677294).withOpacity(1)),
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
                const favIcon()
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
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Text(
                'Afternoon 7 slots',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.sp,
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(
          height: 80.h,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: selectedContainer02(
                          text: '${time[index]}',
                        ));
                  }),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
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
                        padding: const EdgeInsets.all(3.0),
                        child: selectedContainer02(
                          text: '${time2[index]}',
                        ));
                  }),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Text(
                'Evening 5 slots',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.sp,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80.h,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: selectedContainer02(
                          text: '${time3[index]}',
                        ));
                  }),
            ),
          ),
        ),
        SizedBox(height: 2.h),
        SizedBox(
          height: 80.h,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: selectedContainer02(
                          text: '${time4[index]}',
                        ));
                  }),
            ),
          ),
        ),
      ]),
    ]));
  }
}

////////////Second container//////////////
class selectedContainer02 extends StatefulWidget {
  final String text;
  const selectedContainer02({
    required this.text,
    super.key,
  });

  @override
  State<selectedContainer02> createState() => _selectedContainer02State();
}

class _selectedContainer02State extends State<selectedContainer02> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          select = !select;
        });
      },
      child: Container(
        width: 278.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(20).w),
          color: select ? mainColor.withOpacity(1) : Colors.white,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 50.sp,
                fontWeight: FontWeight.bold,
                color: select ? Colors.white : mainColor.withOpacity(1)),
          ),
        ),
      ),
    );
  }
}

////////////first container//////////////

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
        width: 550.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(20).w),
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
                    : const Color(0x00677294).withOpacity(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//////////////favourite icon////////////
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
