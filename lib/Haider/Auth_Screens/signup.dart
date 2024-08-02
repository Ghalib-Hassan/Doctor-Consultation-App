import 'package:doctor_consultation/Custom_Widgets/colors.dart';
import 'package:doctor_consultation/Haider/Auth_Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Join us to start searching',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.sp,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: Text(
                  'you can search course, apply course and find scholarship for abroad studies',
                  style: TextStyle(color: Colors.black, fontSize: 60.sp),
                  textAlign: TextAlign.center,
                ),
              ),
              ///////////////////////////
              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 460.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.g_mobiledata,
                            size: 30,
                            color: Colors.red,
                          ),
                          Text(
                            'Google',
                            style:
                                TextStyle(color: Colors.black, fontSize: 60.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 460.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.facebook,
                            size: 20,
                            color: Color.fromARGB(255, 0, 33, 59),
                          ),
                          Text('Facebook',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 60.sp))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //////////////////
              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: 'Name',
                          labelText: 'Name',
                          hintStyle: TextStyle(fontSize: 60.sp),
                          labelStyle: TextStyle(fontSize: 60.sp),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          hintStyle: TextStyle(fontSize: 60.sp),
                          labelStyle: TextStyle(fontSize: 60.sp),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          hintStyle: TextStyle(fontSize: 60.sp),
                          labelStyle: TextStyle(fontSize: 60.sp),
                          suffixIcon: Icon(Icons.visibility_off_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 45.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'I agree with the Terms of Service & Privacy Policy',
                          style:
                              TextStyle(color: Colors.black, fontSize: 40.sp),
                          // textAlign: TextAlign.center,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                width: 400.w,
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: mainColor.withOpacity(1),
                ),
                child: Center(
                    child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 60.sp),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'Have an account? Log in',
                  style: TextStyle(
                      color: mainColor.withOpacity(1), fontSize: 50.sp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
