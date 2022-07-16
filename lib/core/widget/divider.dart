import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(color: Color(0xffD5D5E0)),
    );
  }
}
