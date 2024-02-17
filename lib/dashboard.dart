import 'package:flutter/material.dart';
import 'package:newsportal_app/common_app_bar.dart';
import 'package:newsportal_app/slider_screen.dart';
import 'package:sizer/sizer.dart';

import 'homescreen.dart';
import 'utils/app_colors.dart';
import 'utils/app_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(title: 'Dashboard', height: 6.5.h),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.5.h, vertical: 2.0.w),
          child: Column(
            children: [
              SizedBox(
                height: 1.5.h,
              ),
              MySliderScreen(),
              _titleAndSeeAll(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen(
                            frompage: 'dashboard',
                          )),
                );
              }, 'Newspapers', true),
              // HomeScreen(frompage: 'dashboard'),
            ],
          ),
        ));
  }

  Widget _titleAndSeeAll(Function fun, String title, bool showArrow) {
    return SizedBox(
      width: 100.w,
      height: 6.5.h,
      // padding:
      //     EdgeInsets.only(top: 1.0.h, bottom: 1.0.h, left: 4.0.w, right: 4.0.w),
      child: Row(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 19.0.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
                fontFamily: AppFonts.ROBOTO),
          ),
          const Spacer(),
          showArrow
              ? InkWell(
                  onTap: () {
                    fun();
                  },
                  child:

                      //  const Icon(Icons.arrow_forward)
                      Text(
                    'See all',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13.0.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                        fontFamily: AppFonts.ROBOTO),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
