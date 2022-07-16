import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeader extends StatelessWidget {
  final String? text;
  const TextHeader({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      alignment: Alignment.centerLeft,
      child: Text(
        text!,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14.sp,
                color: const Color(0xFF88888F))),
      ),
    );
  }
}
