// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:sizer/sizer.dart';

// import 'utils/app_assets.dart';

// class MySliderScreen extends StatefulWidget {
//   @override
//   _MySliderScreenState createState() => _MySliderScreenState();
// }

// class _MySliderScreenState extends State<MySliderScreen> {
//   int _currentIndex = 0;

//   List<String> imageList = [
//     AppAssets.prothom_alo,
//     AppAssets.bangladesh_protidin,
//     AppAssets.ittfaq,
//     AppAssets.kalerkonto,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.0),
//         color: Colors.amber,
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20.0),
//         child: Column(
//           children: [
//             CarouselSlider(
//               options: CarouselOptions(
//                 height: 14.0.h,
//                 autoPlay: true,
//                 autoPlayInterval: Duration(seconds: 2),
//                 enlargeCenterPage: true,
//                 viewportFraction:
//                     1.0, // Set to 1.0 to show only one image at a time
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//               ),
//               items: imageList.map((imagePath) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return Container(
//                       padding: EdgeInsets.all(10),
//                       // width: 100.0.w,
//                       child: Image.asset(
//                         imagePath,
//                         fit: BoxFit.contain,
//                       ),
//                     );
//                   },
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 1.0.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(imageList.length, (index) {
//                 return Container(
//                   width: 12.0,
//                   height: 12.0,
//                   margin: EdgeInsets.symmetric(horizontal: 4.0),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: _currentIndex == index ? Colors.blue : Colors.grey,
//                     border: Border.all(
//                       color: Colors.white,
//                       width: 2.0,
//                     ),
//                   ),
//                 );
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:newsportal_app/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

import 'utils/app_assets.dart';

class MySliderScreen extends StatefulWidget {
  const MySliderScreen({super.key});

  @override
  _MySliderScreenState createState() => _MySliderScreenState();
}

class _MySliderScreenState extends State<MySliderScreen> {
  int _currentIndex = 0;

  List<String> imageList = [
    AppAssets.prothom_alo,
    AppAssets.bangladesh_protidin,
    AppAssets.ittfaq,
    AppAssets.kalerkonto,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColors.rattingStarColor,
      ),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 14.0.h,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: imageList.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 1.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(imageList.length, (index) {
              return Container(
                width: 12.0,
                height: 12.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.orange : Colors.grey,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
