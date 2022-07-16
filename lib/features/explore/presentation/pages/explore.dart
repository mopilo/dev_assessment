import 'package:dev_assessment/core/widget/divider.dart';
import 'package:dev_assessment/features/explore/presentation/provider/explore_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

enum WidgetMarker { steak, veg, beef, chicken }

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.steak;

  ExploreProvider? _exploreProvider;
  @override
  void initState() {
    super.initState();
    _exploreProvider = Provider.of<ExploreProvider>(context, listen: false);
    _exploreProvider?.getFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: false,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 15,
          ),
          title: Text(
            "Explore",
            style: GoogleFonts.montserrat(
                color: const Color(0xFF013A4D),
                fontSize: 14.sp,
                fontWeight: FontWeight.w700),
          ),
          actions: [
            SvgPicture.asset(
              'assets/search.svg',
              color: const Color(0xFF013A4D),
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0.w, left: 14.w),
              child: Container(
                height: 32.64,
                width: 32.64,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xff013A4D), shape: BoxShape.circle),
                child: SvgPicture.asset(
                  'assets/cart.svg',
                  color: Colors.white,
                  height: 16,
                ),
              ),
            )
          ],
        ),
        body: Consumer<ExploreProvider>(builder: (context, info, child) {
          if (info.exploreEnum == ExploreEnum.busy) {
            return const Center(child: CircularProgressIndicator());
          }
          return SafeArea(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                alignment: Alignment.center,
                width: double.infinity,
                height: 198.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: const DecorationImage(
                        image: AssetImage('assets/main.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                // alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.h),
                        Text(
                          "Global Steak",
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFF333333),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Supreme King Size Double \nSteak Burger",
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFF333333),
                              fontSize: 11.sp,
                              height: 1.6,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 16.h),
                        Text(
                          "\$30",
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFF013A4D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 11.h),
                        Container(
                          alignment: Alignment.center,
                          height: 26.h,
                          width: 71.w,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFC700),
                              borderRadius: BorderRadius.circular(4.r)),
                          child: Text(
                            "Add to cart",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 19.h),
              CustomDivider(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _item(WidgetMarker.steak, 'Steak'),
                      SizedBox(width: 30.w),
                      _item(WidgetMarker.veg, 'Veg'),
                      SizedBox(width: 30.w),
                      _item(WidgetMarker.beef, 'Beef'),
                      SizedBox(width: 30.w),
                      _item(WidgetMarker.chicken, 'Chicken'),
                    ]),
              ),
              Flexible(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: .62,
                      children: [
                        ...info.food!.map((meal) => Container(
                              margin: EdgeInsets.only(bottom: 20.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(17.r)),
                                      child: Container(
                                        color: Colors.red,
                                        child: SvgPicture.network(meal.image!,
                                            semanticsLabel: 'Meals',
                                            fit: BoxFit.cover,
                                            height: 101.h,
                                            width: 101.w),
                                      )),
                                  SizedBox(height: 4.h),
                                  Expanded(
                                    child: Text(
                                      meal.title!,
                                      style: GoogleFonts.montserrat(
                                          color: const Color(0xFF333333),
                                          fontSize: 10.sp,
                                          height: 1.6,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30.h,
                                    width: 93.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFFFC700),
                                        borderRadius:
                                            BorderRadius.circular(4.r)),
                                    child: RichText(
                                        text: TextSpan(
                                            text: "Add to cart",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w400),
                                            children: [
                                          TextSpan(
                                            text: " \$${meal.price!}",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ])),
                                  ),
                                ],
                              ),
                            ))
                      ]),
                ),
              ),
            ],
          ));
        }));
  }

  Widget _item(selected, text) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedWidgetMarker = selected;
          });
        },
        child: Container(
          width: 42.w,
          height: 19.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: selectedWidgetMarker == selected
                  ? const Color(0xFFFFC700)
                  : Colors.white),
          child: Text(
            text,
            style: GoogleFonts.montserrat(
                fontSize: 7.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
