import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Main_Screens/medicine_order1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> images = [
  'asset/assets/order-managment/one-removebg-preview.png',
  'asset/assets/order-managment/two-removebg-preview.png',
  'asset/assets/order-managment/three-removebg-preview.png',
  'asset/assets/order-managment/four-removebg-preview.png',
  'asset/assets/order-managment/five-removebg-preview.png',
  'asset/assets/order-managment/six-removebg-preview.png'
];

List text = [
  'Guide to medicine\n order',
  'Prescription\n related issues',
  'Order status',
  'Order delivery',
  'payments & Refunds',
  'Order returns'
];

class OrderManagment extends StatefulWidget {
  const OrderManagment({super.key});

  @override
  State<OrderManagment> createState() => _OrderManagmentState();
}

class _OrderManagmentState extends State<OrderManagment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////////////////////
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
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MedicineOrder()));
                      },
                      child: Container(
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10).w)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    Text(
                      'Medicines orders',
                      style: TextStyle(
                          fontSize: 80.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ])),
              SizedBox(
                height: 30.h,
              ),
              TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'search',
                    hintStyle: TextStyle(fontSize: 60.sp),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.cancel)),
              ),
              ///////////////////////////////////////
              SizedBox(
                height: 20.h,
              ),

              Expanded(
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).w,
                        color: Colors.white,
                        // border: Border.all()
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(250).w,
                              color: Color(0xC6EFE5C2).withOpacity(.7),
                              // border: Border.all()
                            ),
                            child: Image.asset(
                              images[index],
                              scale: 6,
                              color: Color(0x0EBE7F).withOpacity(1),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            text[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50.sp,
                                color: Color(0x677294).withOpacity(1)),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
