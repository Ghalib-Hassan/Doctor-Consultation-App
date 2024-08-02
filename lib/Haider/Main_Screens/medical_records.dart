import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/add_record1.dart';
import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalRecord extends StatefulWidget {
  const MedicalRecord({super.key});

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {
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
          'Medical Records',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.sp),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xC6EFE5).withOpacity(.7)),
              child: Image.asset(
                'asset/assets/image/image_1.png',
                scale: 3,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'add a medical record.',
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
                'A detailed health history helps a doctor diagnose you better.',
                style: TextStyle(color: Colors.black, fontSize: 50.sp),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddRecords()));
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: mainColor.withOpacity(1)),
                child: Center(
                    child: Text(
                  'Add a record',
                  style: TextStyle(color: Colors.white, fontSize: 60.sp),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
