import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  const CustomCard({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(2.0.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.0.w),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(2.0.w),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 5.0.h,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 1.0.h,
            ),
            Container(
              height: 0.5.h,
              child: Divider(
                thickness: 2,
                color: Colors.transparent,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0.w),
                gradient: const LinearGradient(
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
            SizedBox(
              height: 0.8.h,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 13.0.sp, // Set your desired font size
                fontWeight: FontWeight.w500, // Set your desired font weight
                color: Colors.black, // Set your desired text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
