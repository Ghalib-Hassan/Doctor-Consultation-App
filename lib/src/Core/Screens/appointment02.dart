import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:doctor_consultation/src/Utils/colors.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
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
      body: Stack(children: [
        const Backgroundsplash(),
        SingleChildScrollView(
          child: Column(children: [
            AppbarPop(
              sizedWidth: 10.w,
              title: 'Appointment',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TableCalendar(
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
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  weekendStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                calendarStyle: CalendarStyle(
                  defaultTextStyle:
                      TextStyle(fontSize: 10.sp, color: Colors.black),
                  weekendTextStyle:
                      TextStyle(fontSize: 10.sp, color: Colors.black),
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
                  headerPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  headerMargin:
                      const EdgeInsets.only(top: 20, left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(const Radius.circular(5).w),
                    color: mainColor.withOpacity(1),
                  ),
                  formatButtonVisible: false,
                  titleCentered: true,
                  leftChevronIcon: const Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 30,
                  ),
                  rightChevronIcon: const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 30,
                  ),
                  titleTextStyle: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 200.w,
              height: 350.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20).w,
                      topRight: const Radius.circular(20).w),
                  color: Colors.white.withOpacity(1)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Available Time',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
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
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Reminder Me Before',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
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
                  Buttons(
                      Cwidth: 150.w,
                      text: 'Confirm',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 350.h, // Set the desired height here
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80.w,
                                      height: 100.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              const Radius.circular(100).w),
                                          color: const Color(0x00e7f8f2)
                                              .withOpacity(1)),
                                      child: Icon(
                                        Icons.thumb_up_alt_sharp,
                                        size: 50,
                                        color: mainColor.withOpacity(1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      'Thank You !',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(
                                      'Your Appointment Successful',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: const Color(0x00677294)
                                              .withOpacity(1),
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      'You booked an appointment with Dr. Pediatrician Purpieson on February 21, at 02:00 PM',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: const Color(0x00677294)
                                              .withOpacity(1),
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Buttons(
                                        Cwidth: 120.w,
                                        text: 'Done',
                                        fontSize: 12.sp,
                                        onPressed: () {}),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        navPush(context, const Appointment02());
                                      },
                                      child: Text(
                                        'Edit your appointment',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: const Color(0x00677294)
                                                .withOpacity(1),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      })
                ],
              ),
            ),
          ]),
        ),
      ]),
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
        width: 45.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(80).w),
          color: select
              ? mainColor.withOpacity(1)
              : const Color(0x0EBE7F14).withOpacity(.08),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            widget.text,
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: select ? Colors.white : mainColor.withOpacity(1)),
          ),
          Text(
            widget.text2,
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: select ? Colors.white : mainColor.withOpacity(1)),
          ),
        ]),
      ),
    );
  }
}
