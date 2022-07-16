import 'package:dev_assessment/core/widget/divider.dart';
import 'package:dev_assessment/core/widget/text_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAB161),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/background_icons.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 20, bottom: 12),
            child: Column(
              children: [
                Image.asset('assets/pass.png'),
                Container(
                  margin: const EdgeInsets.only(top: 12, bottom: 12),
                  height: 26.h,
                  width: 91.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Text(
                    "Buyer",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12.sp),
                    ),
                  ),
                ),
                SizedBox(height: 11.h),
                Text(
                  'Semedo Dapaah',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Colors.white)),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Head Cook /  Marina, Lagos',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Colors.white)),
                ),
                SizedBox(height: 13.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/facebook.png'),
                    SizedBox(width: 17.h),
                    Image.asset('assets/twitter.png'),
                    SizedBox(width: 17.h),
                    Image.asset('assets/gram.png'),
                    SizedBox(width: 17.h),
                    Image.asset('assets/in.png')
                  ],
                ),
                SizedBox(height: 38.h),
                Container(
                  height: 403.h,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Column(children: [
                    SizedBox(height: 14.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Commentaries',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: const Color(0xFF88888F))),
                            ),
                            SizedBox(height: 7.h),
                            Text(
                              '11',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: const Color(0xFF333333))),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Orders',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: const Color(0xFF88888F))),
                            ),
                            SizedBox(height: 7.h),
                            Text(
                              '86',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: const Color(0xFF333333))),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 16.h),
                    CustomDivider(),
                    SizedBox(height: 12.h),
                    const TextHeader(text: 'About'),
                    SizedBox(height: 10.h),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hello, we want you to work with us in developing a great meal profile. We use this platform to improve our services and give feedback to our customers',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                color: const Color(0xFF88888F))),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    CustomDivider(),
                    SizedBox(height: 19.5.h),
                    const TextHeader(text: 'Contact'),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 11.h),
                      child: Row(
                        children: [
                          Image.asset('assets/tel.png'),
                          SizedBox(width: 13.w),
                          Text(
                            '+0 123 4456 7890',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.sp,
                                    color: const Color(0xFF88888F))),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.w),
                      child: Row(
                        children: [
                          Image.asset('assets/sms.png'),
                          SizedBox(width: 13.w),
                          Text(
                            'hello@mytruq.com',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.sp,
                                    color: const Color(0xFF88888F))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 37.h),
                    CustomDivider(),
                    SizedBox(height: 24.h),
                    Container(
                      child: Image.asset('assets/down.png'),
                    )
                  ]),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
