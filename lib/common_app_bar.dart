import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_fonts.dart';

// ignore: must_be_immutable
class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  String? title;
  String? image;
  final double height;
  // final double elevation;
  final bool? finishScreen;
  // final bool isTitleCenter;
  // final IconData icon;

  CommonAppBar({
    this.title,
    required this.height,
    this.image,
    // required this.elevation,

    this.finishScreen = false,
    // required this.isTitleCenter,
    // required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _appbar(context);
  }

  Widget _appbar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 6.5.h,
      title: finishScreen == false
          ? Text(
              title!,
              textScaleFactor: 1.0,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.ROBOTO),
            )
          : Image.asset(
              image!,
              height: 4.h,
              fit: BoxFit.contain,
            ),
      elevation: 0.0,
      backgroundColor: AppColors.facebookBlue,
      // backgroundColor: AppColors.white,
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          )),
    );
  }
}
