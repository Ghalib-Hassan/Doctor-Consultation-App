import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Onboarding_Screens/Onboarding_Screen_02/Doctor_Detail/Appointment/appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

List time = ['10:00', '12:00', '02:00', '03:00', '04:00'];
List englishtime = ['AM', 'AM', 'PM', 'PM', 'PM'];
List time2 = ['30', '40', '25', '10', '35'];

class Appointment02 extends StatefulWidget {
  const Appointment02({super.key});

  @override
  State<Appointment02> createState() => _Appointment02State();
}

class _Appointment02State extends State<Appointment02> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
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
                                builder: (context) => Appointment()));
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
            TableCalendar(
              daysOfWeekHeight: 20.h,
              startingDayOfWeek: StartingDayOfWeek.monday,
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    fontSize: 60.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                weekendStyle: TextStyle(
                    fontSize: 60.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              calendarStyle: CalendarStyle(
                defaultTextStyle:
                    TextStyle(fontSize: 60.sp, color: Colors.black),
                weekendTextStyle:
                    TextStyle(fontSize: 60.sp, color: Colors.black),
                rangeHighlightColor: mainColor.withOpacity(1),
                selectedDecoration: BoxDecoration(
                  color: mainColor.withOpacity(1),
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: mainColor.withOpacity(1),
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: HeaderStyle(
                headerPadding: EdgeInsets.symmetric(vertical: 16.0),
                headerMargin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20).w),
                  color: mainColor.withOpacity(1),
                ),
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 40,
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                  size: 40,
                ),
                titleTextStyle: TextStyle(
                  fontSize: 70.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 1200.w,
              height: 450.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30).w,
                      topRight: Radius.circular(30).w),
                  color: Colors.white.withOpacity(1)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 50),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Available Time',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 80.sp),
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
                            itemCount: time.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: selectedContainer03(
                                    text: '${time[index]}',
                                    text2: '${englishtime[index]}',
                                  ));
                            }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 50),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Reminder Me Before',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 80.sp),
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
                            itemCount: time.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: selectedContainer03(
                                    text: '${time2[index]}',
                                    text2: 'Minit',
                                  ));
                            }),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor.withOpacity(1),
                        padding: EdgeInsets.symmetric(
                            horizontal: 340.w, vertical: 17.h),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(13).w))),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 550.h, // Set the desired height here
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 550.w,
                                    height: 200.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(300).w),
                                        color: Color(0xE7F8F2).withOpacity(1)),
                                    child: Icon(
                                      Icons.thumb_up_alt_sharp,
                                      size: 90,
                                      color: mainColor.withOpacity(1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    'Thank You !',
                                    style: TextStyle(
                                        fontSize: 100.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'Your Appointment Successful',
                                    style: TextStyle(
                                        fontSize: 70.sp,
                                        color: Color(0x677294).withOpacity(1),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    'You booked an appointment with Dr. Pediatrician Purpieson on February 21, at 02:00 PM',
                                    style: TextStyle(
                                        fontSize: 58.sp,
                                        color: Color(0x677294).withOpacity(1),
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            mainColor.withOpacity(1),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 340.w, vertical: 17),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(13).w))),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Close the dialog
                                    },
                                    child: Text(
                                      'Done',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 70.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Appointment02()));
                                    },
                                    child: Text(
                                      'Edit your appointment',
                                      style: TextStyle(
                                          fontSize: 50.sp,
                                          color: Color(0x677294).withOpacity(1),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white, fontSize: 70.sp),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
          ]),
        ]),
      ),
    );
  }
}

class selectedContainer03 extends StatefulWidget {
  final String text;
  final String text2;
  const selectedContainer03({
    required this.text,
    required this.text2,
    super.key,
  });

  @override
  State<selectedContainer03> createState() => _selectedContainer03State();
}

class _selectedContainer03State extends State<selectedContainer03> {
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
        width: 230.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(250).w),
          color: select
              ? mainColor.withOpacity(1)
              : Color(0x0EBE7F14).withOpacity(.08),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            widget.text,
            style: TextStyle(
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
                color: select ? Colors.white : mainColor.withOpacity(1)),
          ),
          Text(
            widget.text2,
            style: TextStyle(
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
                color: select ? Colors.white : mainColor.withOpacity(1)),
          ),
        ]),
      ),
    );
  }
}
