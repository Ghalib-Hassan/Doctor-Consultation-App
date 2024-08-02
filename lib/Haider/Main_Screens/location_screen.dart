import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
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
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
        ),
        title: Text(
          'Enable Location Services',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.sp),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xC6EFE5).withOpacity(.7)),
              child: Image.asset(
                'asset/assets/image/image_3.png',
                scale: 3,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Location',
              style: TextStyle(
                  fontSize: 80.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Text(
                'your location services are switched off. Please enable location, to help us serve better',
                style: TextStyle(
                    color: Colors.black.withOpacity(.7), fontSize: 60.sp),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: mainColor.withOpacity(1)),
              child: Center(
                  child: Text(
                'Enable Location',
                style: TextStyle(color: Colors.white, fontSize: 60.sp),
              )),
            )
          ],
        ),
      ),
    );
  }
}
