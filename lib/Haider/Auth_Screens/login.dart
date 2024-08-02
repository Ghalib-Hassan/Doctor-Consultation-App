import 'package:doctor_consultation/Haider/Main_Screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome back',
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
                  style: TextStyle(
                      color: Colors.black.withOpacity(.7), fontSize: 60.sp),
                  textAlign: TextAlign.center,
                ),
              ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.g_mobiledata,
                            size: 30,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 20.w,
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
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.facebook,
                            size: 20,
                            color: Color.fromARGB(255, 0, 33, 59),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            'Facebook',
                            style:
                                TextStyle(color: Colors.black, fontSize: 60.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          hintText: 'haiderullahls1@gmail.com',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 60.sp),
                          suffixIcon: Icon(Icons.check),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          hintText: '*************',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 60.sp),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300.w,
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0x0EBE7E).withOpacity(1),
                ),
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.sp,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _showForgotPasswordDialog(context);
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Color(0x0EBE7E).withOpacity(1), fontSize: 60.sp),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Don`t have an account? Join us',
                style: TextStyle(
                    color: Color(0x0EBE7F).withOpacity(1), fontSize: 60.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showForgotPasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Forgot password',
            style: TextStyle(
                color: Colors.black,
                fontSize: 60.sp,
                fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Enter your email for the verification process, we will send a 4-digit code to your email.',
                style: TextStyle(
                    color: Colors.black.withOpacity(.7), fontSize: 50.sp),
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(.7), fontSize: 60.sp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0x0EBE7E).withOpacity(1),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10).w))),
                onPressed: () {},
                child: GestureDetector(
                  onTap: () {
                    _showDigitsCodeDialog(context);
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 60.sp),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

/////////////////////////////////////////////////////////////

void _showDigitsCodeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Enter 4 Digits Code',
          style: TextStyle(
              color: Colors.black,
              fontSize: 60.sp,
              fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Enter the 4 digits code that you received on your email.',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7), fontSize: 50.sp),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10).w,
                    // color: const Color.fromARGB(255, 226, 221, 221)
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //
                Container(
                  width: 100.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10).w,
                    // color: const Color.fromARGB(255, 226, 221, 221)
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //
                Container(
                  width: 100.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10).w,
                    // color: const Color.fromARGB(255, 226, 221, 221)
                  ),
                  child: Center(
                    child: Text(
                      '0',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //
                Container(
                  width: 100.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10).w,
                    // color: const Color.fromARGB(255, 226, 221, 221)
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0x0EBE7E).withOpacity(1),
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10).w))),
              onPressed: () {
                _showResetPasswordDialog(context);
              },
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 60.sp),
              ),
            ),
          )
        ],
      );
    },
  );
}
///////////////////////////////////////////////////////////////

void _showResetPasswordDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Reset Password',
          style: TextStyle(
              color: Colors.black,
              fontSize: 60.sp,
              fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Set the new password for your account so you can login and access all the features.',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7), fontSize: 50.sp),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black, fontSize: 60.sp),
              decoration: InputDecoration(
                hintText: 'New Password',
                suffixIcon: Icon(Icons.visibility_off_outlined),
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(.7), fontSize: 60.sp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            ///////
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black, fontSize: 60.sp),
              decoration: InputDecoration(
                hintText: 'Re-enter Password',
                suffixIcon: Icon(Icons.visibility_off_outlined),
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(.7), fontSize: 60.sp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0x0EBE7E).withOpacity(1),
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10).w))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuScreen()));
              },
              child: Text(
                'Update password',
                style: TextStyle(color: Colors.white, fontSize: 60.sp),
              ),
            ),
          )
        ],
      );
    },
  );
}
