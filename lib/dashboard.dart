import 'package:flutter/material.dart';
import 'package:newsportal_app/common_app_bar.dart';
import 'package:newsportal_app/slider_screen.dart';
import 'package:sizer/sizer.dart';

import 'job_sites_screen.dart';
import 'live_news_chanel.dart';
import 'newspaper_list_screen.dart';
import 'utils/app_colors.dart';
import 'utils/app_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 6.5.h,
          backgroundColor: AppColors.facebookBlue,
          centerTitle: true,
          title: const Text(
            'Dashboard',
            textScaleFactor: 1.0,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: AppFonts.ROBOTO),
          ),
        ),

        // CommonAppBar(title: 'Dashboard', height: 6.5.h),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.5.h, vertical: 2.0.w),
          child: SingleChildScrollView(
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
                        builder: (context) => NewspaperListScreen(
                              frompage: 'dashboard',
                            )),
                  );
                }, 'Newspapers', true),
                NewspaperListScreen(frompage: 'others'),
                _titleAndSeeAll(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JobSiteScrren(
                              frompage: 'dashboard',
                            )),
                  );
                }, 'Job Sites', true),
                JobSiteScrren(frompage: 'others'),
                _titleAndSeeAll(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JobSiteScrren(
                              frompage: 'dashboard',
                            )),
                  );
                }, 'Live Tv News', true),
                LiveNewsScreen(),
                SizedBox(
                  height: 2.0.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 1.5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0.w),
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.orange,
                          Colors.yellow,
                          Colors.green,
                          Colors.blue,
                          Colors.indigo,
                          Colors.purple,
                        ],
                        stops: [
                          0.0,
                          0.15,
                          0.3,
                          0.45,
                          0.6,
                          0.75,
                          1.0,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                ),
                // _titleAndSeeAll(() {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => JobSiteScrren(
                //               frompage: 'dashboard',
                //             )),
                //   );
                // }, 'Job Sites', true),
                // JobSiteScrren(frompage: 'others'),
              ],
            ),
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
