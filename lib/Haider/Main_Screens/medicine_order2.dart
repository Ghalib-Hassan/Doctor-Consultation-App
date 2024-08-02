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
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MedicineOrder()));
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
          'Medicines orders',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.sp),
        ),
      ),
      /////////////////////////////////
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: [
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
              height: 30,
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
    );
  }
}
