import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
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
        const Backgroundsplash(),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              AppbarPop(
                sizedWidth: 10.w,
                title: 'Medicine Orders',
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    focusColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.cancel_outlined),
                    hintText: 'search',
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
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5).w,
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 55.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(250).w,
                              color: const Color(0x00c6efe5).withOpacity(.7),
                            ),
                            child: Image.asset(
                              images[index],
                              scale: 4,
                              color: const Color(0x000ebe7f).withOpacity(1),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            text[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp,
                                color: const Color(0x00677294).withOpacity(1)),
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
