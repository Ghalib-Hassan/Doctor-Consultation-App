import 'package:doctor_consultation/src/Core/Screens/diagnostic_test1.dart';
import 'package:doctor_consultation/src/Core/Screens/medicine_order1.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List leadings = [
  'Booking a new Appointment',
  'Existing Appointment',
  'Online consultations',
  'Feedbacks',
  'Medicine orders',
  'Diagnostic Tests',
  'Health plans',
  'My account and Practo Drive',
  'Have a feature in mind',
  'Other issues'
];

class HelpMenu extends StatefulWidget {
  const HelpMenu({super.key});

  @override
  State<HelpMenu> createState() => _HelpMenuState();
}

class _HelpMenuState extends State<HelpMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////
      body: Stack(children: [
        const Backgroundsplash(),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              AppbarPop(
                sizedWidth: 10.w,
                title: 'Help center',
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 18, left: 10, right: 10, bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    focusColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'I have an issue with...',
                    hintStyle: TextStyle(fontSize: 10.sp, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(5).w),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(5).w),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(5).w),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(5).w),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(5).w),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                    ),
                  ),
                ),
              ),
              ///////////////////////////////////////

              Expanded(
                child: ListView.builder(
                    itemCount: leadings.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          if (index == 4) {
                            navPush(context, const MedicineOrder());
                          } else if (index == 5) {
                            navPush(context, const Diagnostic());
                          }
                        },
                        child: ListTile(
                          leading: Text(
                            '${leadings[index]}',
                            style: TextStyle(
                                color: const Color(0x00677294).withOpacity(1)),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios,
                              color: const Color(0x00677294).withOpacity(1)),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
