import 'package:doctor_consultation/src/Core/Screens/privacy_policy.dart';
import 'package:doctor_consultation/src/Core/Screens/profile1.dart';
import 'package:doctor_consultation/src/Custom_Widgets/appbar_pop.dart';
import 'package:doctor_consultation/src/Custom_Widgets/backgroundSplash.dart';
import 'package:doctor_consultation/src/Utils/navigatePush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  void toggleButtons(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  bool isbutton = false;
  void toggle(bool value) {
    setState(() {
      isbutton = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const Backgroundsplash(),
      SingleChildScrollView(
        child: Column(children: [
          AppbarPop(
            sizedWidth: 10.w,
            title: 'Settings',
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                      child: Text(
                        'Account Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: const Color(0x00677294).withOpacity(1)),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        height: 35.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0x00eb5757).withOpacity(1)),
                        child: const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Change Password',
                        style:
                            TextStyle(fontSize: 12.sp, color: Colors.black38),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black38)),
                    ),
                    const Divider(
                      thickness: 0.1,
                      color: Colors.black12,
                    ),
                    /////////////////////////////////////
                    ListTile(
                      leading: Container(
                        height: 35.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0x00219653).withOpacity(1)),
                        child: const Icon(
                          Icons.notification_important_sharp,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Notification',
                        style:
                            TextStyle(fontSize: 12.sp, color: Colors.black38),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black38)),
                    ),
                    const Divider(
                      thickness: 0.1,
                      color: Colors.black12,
                    ),

                    /////////////////////////////////////
                    ListTile(
                      leading: Container(
                        height: 35.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0x0056ccf2).withOpacity(1)),
                        child: const Icon(
                          Icons.pie_chart,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Statistics',
                        style:
                            TextStyle(fontSize: 12.sp, color: Colors.black38),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black38)),
                    ),
                    const Divider(
                      thickness: 0.1,
                      color: Colors.black12,
                    ),

                    /////////////////////////////////////
                    ListTile(
                      leading: Container(
                        height: 35.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0x00f2994a).withOpacity(1)),
                        child: const Icon(
                          Icons.group,
                          color: Colors.white,
                        ),
                      ),
                      title: GestureDetector(
                        onTap: () {
                          navPush(context, const About());
                        },
                        child: Text(
                          'About us',
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.black38),
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            navPush(context, const About());
                          },
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black38)),
                    ),
                    const Divider(
                      thickness: 0.1,
                      color: Colors.black12,
                    ),

                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'More Options',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: const Color(0x00677294).withOpacity(1)),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Text Messages',
                            style: TextStyle(
                                color: Colors.black38, fontSize: 10.sp),
                          ),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Text(
                          isSwitched ? '' : '',
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: toggleButtons,
                          trackOutlineColor:
                              const WidgetStatePropertyAll(Colors.black),
                          activeTrackColor: Colors.white,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 0.1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Phone Calls',
                            style: TextStyle(
                                color: Colors.black38, fontSize: 10.sp),
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                        ),
                        Text(
                          isSwitched ? '' : '',
                        ),
                        Switch(
                          value: isbutton,
                          onChanged: toggle,
                          trackOutlineColor:
                              const WidgetStatePropertyAll(Colors.black),
                          activeTrackColor: Colors.white,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 0.1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),

                    ListTile(
                      leading: const Text(
                        'Languages',
                        style: TextStyle(color: Colors.black38),
                      ),
                      trailing: SizedBox(
                        width: 100.w,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'English',
                              style: TextStyle(color: Colors.black38),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.black38),
                          ],
                        ),
                      ),
                    ),

                    const Divider(
                      thickness: 0.1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ListTile(
                      leading: const Text(
                        'Currency',
                        style: TextStyle(color: Colors.black38),
                      ),
                      trailing: SizedBox(
                        width: 100.w,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '\$-USD',
                              style: TextStyle(color: Colors.black38),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.black38),
                          ],
                        ),
                      ),
                    ),

                    const Divider(
                      thickness: 0.1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    InkWell(
                      onTap: () {
                        navPush(context, const SelectAccount());
                      },
                      child: ListTile(
                        leading: const Text(
                          'Linked accounts',
                          style: TextStyle(color: Colors.black38),
                        ),
                        trailing: SizedBox(
                          width: 100.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Facebook, Google',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 8.sp),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black38)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ]),
      ),
    ]));
  }
}
