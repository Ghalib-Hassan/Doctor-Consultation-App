import 'package:doctor_consultation/src/Custom_Widgets/all_records_container.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Custom_Widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllRecords extends StatefulWidget {
  const AllRecords({super.key});

  @override
  State<AllRecords> createState() => _AllRecordsState();
}

class _AllRecordsState extends State<AllRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////////////////////
      body: Stack(children: [
        const Backgroundsplash(),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            children: [
              AppbarPop(
                sizedWidth: 10.w,
                title: 'All Records',
              ),
              SizedBox(
                height: 20.h,
              ),
              const MainContainer(
                dateno: '27',
                month: 'FEB',
              ),
              const SizedBox(
                height: 10,
              ),
              //////////////////////////////////second container////////////////
              const MainContainer(
                dateno: '28',
                month: 'FEB',
              ),
              const SizedBox(
                height: 10,
              ),
              ///////////////third container////////////////////////////
              const MainContainer(
                dateno: '01',
                month: 'MAR',
              ),
              SizedBox(
                height: 120.h,
              ),
              ////////////////////////////////////////////////////////

              Buttons(
                  Cwidth: 120.w,
                  fontSize: 14.sp,
                  text: 'Add a record',
                  onPressed: () {})
            ],
          ),
        ),
      ]),
    );
  }
}
