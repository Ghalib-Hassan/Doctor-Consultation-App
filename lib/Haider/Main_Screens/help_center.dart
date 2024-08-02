import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
import 'package:doctor_consultation/Hassam/page31.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpMenu extends StatefulWidget {
  const HelpMenu({super.key});

  @override
  State<HelpMenu> createState() => _HelpMenuState();
}

class _HelpMenuState extends State<HelpMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MenuScreen()));
            },
            child: Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).w,
                  color: Colors.white),
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
        ),
        title: Text(
          'Help center',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.sp),
        ),
      ),
      /////////////////
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'I have an issue with',
                  hintStyle: TextStyle(
                      color: mainColor.withOpacity(1), fontSize: 60.sp)
                  // prefixIcon: Icon(Icons.search),
                  // suffixIcon: Icon(Icons.cancel)
                  ),
            ),
            ///////////////////////////////////////
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Booking a new Appointment',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ///////////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Existing Appointment',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ///////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Online consultations',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            /////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Feedbacks',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ///////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Medicine orders',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ////////////////
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Diagnostic()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Diagnostic Tests',
                    style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Health plans',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            /////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My account and practo Drive',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ///////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Have a feature in mind',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Other issues',
                  style: TextStyle(color: Colors.black54, fontSize: 60.sp),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //////////////////

            ////////////////////////
          ],
        ),
      ),
    );
  }
}
