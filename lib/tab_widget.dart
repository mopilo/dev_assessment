import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'features/explore/presentation/pages/explore.dart';
import 'features/profile/presentation/pages/profile.dart';

class TabWidget extends StatelessWidget {
  TabWidget({Key? key}) : super(key: key);

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);

  List<Widget> _buildScreens() {
    return [const Profile(), const Explore(), const Profile(), const Profile()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          title: "Home",
          textStyle:
              GoogleFonts.poppins(fontSize: 8.sp, fontWeight: FontWeight.w500),
          icon: SvgPicture.asset('assets/home.svg'),
          activeColorPrimary: const Color(0xFF013A4D),
          inactiveColorPrimary: const Color(0xFF8E99AF),
          onPressed: (context){

          }
          ),
      PersistentBottomNavBarItem(
        title: "Explore",
        textStyle:
            GoogleFonts.poppins(fontSize: 8.sp, fontWeight: FontWeight.w500),
        icon: SvgPicture.asset('assets/explore.svg'),
        inactiveIcon: SvgPicture.asset('assets/inactive_explore.svg'),
        activeColorPrimary: const Color(0xFF013A4D),
        inactiveColorPrimary: const Color(0xFF8E99AF),
      ),
      PersistentBottomNavBarItem(
        title: "Cart",
        textStyle:
            GoogleFonts.poppins(fontSize: 8.sp, fontWeight: FontWeight.w500),
        icon:
            SvgPicture.asset('assets/cart.svg', color: const Color(0xFF8E99AF)),
        activeColorPrimary: const Color(0xFF013A4D),
        inactiveColorPrimary: const Color(0xFF8E99AF),
        onPressed: (context) {}
      ),
      PersistentBottomNavBarItem(
        title: "Profile",
        textStyle:
            GoogleFonts.poppins(fontSize: 8.sp, fontWeight: FontWeight.w500),
        icon: SvgPicture.asset('assets/active_profile.svg'),
        inactiveIcon: SvgPicture.asset('assets/profile.svg'),
        activeColorPrimary: const Color(0xFF013A4D),
        inactiveColorPrimary: const Color(0xFF8E99AF),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: false,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(23.r),
          colorBehindNavBar: Colors.white,
          border: Border.all(color: const Color(0xffF3F3F3), width: 1)),
      navBarStyle:
          NavBarStyle.style6, 
    );
  }
}
