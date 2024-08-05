import 'package:doctor_consultation/src/Core/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'asset/Live-Screen/dr.jpeg',
              height: 900.h,
              width: 1300.w,
              fit: BoxFit.cover,
            ),
            Container(
              height: 900.h,
              width: 1300.w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black.withOpacity(.8),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  const Radius.circular(20).w)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 80.r,
                        backgroundImage: const AssetImage(
                            'asset/Home-Screen/feature-dr-1.jpeg'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 370.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 90.r,
                        backgroundImage: const AssetImage(
                          'asset/Live-Screen/first.jpeg',
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Everhart Tween',
                            style: TextStyle(
                                fontSize: 50.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Thanks for shareing doctor ❤️',
                            style: TextStyle(
                                fontSize: 50.sp,
                                color: Colors.white.withOpacity(.7)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 90.r,
                        backgroundImage: const AssetImage(
                          'asset/Live-Screen/second.jpeg',
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Bonebrake Mash',
                            style: TextStyle(
                                fontSize: 50.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'They treat immune system disorders',
                            style: TextStyle(
                                fontSize: 50.sp,
                                color: Colors.white.withOpacity(.7)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 90.r,
                        backgroundImage: const AssetImage(
                          'asset/Live-Screen/third.jpeg',
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Handler Wack',
                            style: TextStyle(
                                fontSize: 50.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'This is the largest directory 👍',
                            style: TextStyle(
                                fontSize: 50.sp,
                                color: Colors.white.withOpacity(.7)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 90.r,
                        backgroundImage: const AssetImage(
                          'asset/Live-Screen/fourth.jpeg',
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Comfort Love',
                            style: TextStyle(
                                fontSize: 50.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Depending on their education 😯',
                            style: TextStyle(
                                fontSize: 50.sp,
                                color: Colors.white.withOpacity(.7)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 50.sp, color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 25),
                      focusColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 10.w,
                          height: 10.h,
                          decoration: BoxDecoration(
                            color: const Color(0x000ebe7e).withOpacity(1),
                            borderRadius:
                                BorderRadius.all(const Radius.circular(100).w),
                          ),
                          child: const Icon(
                            Icons.message_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.emoji_emotions_outlined,
                      ),
                      hintText: 'Add a Comment.....',
                      hintStyle:
                          TextStyle(fontSize: 50.sp, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          const Radius.circular(100).w,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
