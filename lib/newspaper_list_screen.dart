import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsportal_app/common_app_bar.dart';
import 'package:newsportal_app/utils/app_assets.dart';
import 'package:newsportal_app/webview_launch_screen.dart';
import 'package:sizer/sizer.dart';
import 'common_card.dart'; // Make sure this import is correct for your CustomCard class

class NewspaperListScreen extends StatelessWidget {
  NewspaperListScreen({super.key, this.frompage});
  final String? frompage;
  final List<String> imagePaths = [
    AppAssets.prothom_alo,
    AppAssets.bangladesh_protidin,
    AppAssets.ittfaq,
    AppAssets.kalerkonto,
    AppAssets.nayadiganta,
    AppAssets.amarsongbad,
    AppAssets.protidinersongbad,
    AppAssets.zugantor,
    AppAssets.doiniksongram,
    AppAssets.manobjomin,
    AppAssets.amadersomoy,
    AppAssets.bonikbarta,
    AppAssets.somokal,
    AppAssets.jonokonto,
    AppAssets.jayjaydin,
    AppAssets.vorerkagoj,
    AppAssets.arthonitirkagoj,
    AppAssets.inclab,
    AppAssets.songbad,
    AppAssets.supravat,
    AppAssets.bangladeshjournal,
    AppAssets.somoyeralo,
    AppAssets.kalbela,
    AppAssets.sharebiz,
    AppAssets.doinikbartaman,
    AppAssets.alokitobangladesh,
    AppAssets.ajkerbaja,
    AppAssets.amaderarthoniti,
    AppAssets.doinikkhaborpotro,
    AppAssets.vorerpata,
    AppAssets.ajkalerkhabor,

    // Add more image paths as needed
  ];

  final List<String> texts = [
    'প্রথম আলো',
    'বাংলাদেশ প্রতিদিন',
    'দৈনিক ইত্তেফাক',
    'কালের কন্ঠ',
    'নয়া দিগন্ত',
    'আমার সংবাদ',
    'প্রতিদিনের সংবাদ',
    'যুগান্তর',
    'দৈনিক সংগ্রাম',
    'মানবজমিন',
    'আমাদের সময়',
    'বণিক বার্তা',
    'সমকাল',
    'দৈনিক সমকণ্ঠ',
    'যায়যায়দিন',
    'ভোরের কাগজ ',
    'অর্থনীতির কাগজ',
    ' দৈনিক ইনকিলাব',
    ' সংবাদ ',
    'সুপ্রভাত',
    ' বাংলাদেশ জার্নাল',
    ' সময়ের আলো',
    ' কালবেলা',
    ' শেয়ার বিজ',
    ' দৈনিক বর্তমান',
    ' আলোকিত বাংলাদেশ',
    ' আজকের বাজার',
    ' আমাদের অর্থনীতি',
    'দৈনিক সরেজমিন',
    ' দৈনিক খবরপত্র',
    'ভোরের পাতা',
    ' আজকালের খবর'
    // Add more texts as needed
  ];
  final List<String> urls = [
    'https://www.prothomalo.com/',
    'https://www.bd-pratidin.com/',
    'https://www.ittefaq.com.bd/',
    'https://www.kalerkantho.com/',
    'https://www.dailynayadiganta.com/',
    'https://www.amarsangbad.com/',
    'https://www.protidinersangbad.com/',
    'https://www.jugantor.com/',
    'https://dailysangram.com/',
    'https://mzamin.com/',
    'https://dainikamadershomoy.com/',
    'https://bonikbarta.net/',
    'https://samakal.com/',
    'https://www.dailyjanakantha.com/',
    'https://www.jaijaidinbd.com/',
    'https://bhorerkagoj.com/',
    'https://arthoniteerkagoj.com/',
    'https://dailyinqilab.com/',
    'https://sangbad.net.bd/',
    'https://suprobhat.com/',
    'https://www.bd-journal.com/',
    'https://www.shomoyeralo.com/',
    'https://www.kalbela.com/',
    'https://sharebiz.net/',
    'https://dailybartoman.com/',
    'https://www.alokitobangladesh.com/',
    'https://www.ajkerbazzar.com/',
    'https://amaderorthoneeti.com/new/',
    'https://sorejominbarta.com/',
    'https://khoborpatrabd.com/',
    'https://www.dailyvorerpata.com/',
    'https://ajkalerkhobor.com/',

    // Add more URLs as needed
  ];

  // @override
  // Widget build(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: GridView.builder(
  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 2, // Number of columns
  //         crossAxisSpacing: 10, // Horizontal space between cards
  //         mainAxisSpacing: 10, // Vertical space between cards
  //         childAspectRatio: 1.9, // Aspect ratio of the cards
  //       ),
  //       itemCount: imagePaths.length,
  //       itemBuilder: (context, index) {
  //         return CustomCard(
  //           imagePath: imagePaths[index],
  //           text: texts[index],
  //           // onTap: onTapActions[index],
  //           onTap: () {
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(
  //                   builder: (context) => WebviewLuncherScreen(
  //                         webViewUrl: urls[index],
  //                         newspapername: texts[index],
  //                         imagePath: imagePaths[index],
  //                       )),
  //             );
  //           },
  //         );
  //       },
  //     ),
  //   );
  // }
  // @override
  // Widget build(BuildContext context) {
  //   if (frompage == 'dashboard') {
  //     return Scaffold(
  //       appBar: CommonAppBar(title: 'Newspapers', height: 6.5.h),
  //       body: _buildGridView(),
  //     );
  //   } else {
  //     return Container(
  //       height: 12.h,
  //       child: ListView.builder(
  //         scrollDirection: Axis.horizontal,
  //         itemCount: imagePaths.length,
  //         itemBuilder: (context, index) {
  //           return Container(
  //             width: 160,
  //             child: CustomCard(
  //               imagePath: imagePaths[index],
  //               text: texts[index],
  //               onTap: () {
  //                 Navigator.push(
  //                   context,
  //                   MaterialPageRoute(
  //                     builder: (context) => WebviewLuncherScreen(
  //                       webViewUrl: urls[index],
  //                       newspapername: texts[index],
  //                       imagePath: imagePaths[index],
  //                     ),
  //                   ),
  //                 );
  //               },
  //             ),
  //           );
  //         },
  //       ),
  //     );
  //   }
  // }

  // Widget _buildGridView() {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: GridView.builder(
  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 2,
  //         crossAxisSpacing: 10,
  //         mainAxisSpacing: 10,
  //         childAspectRatio: 1.9,
  //       ),
  //       itemCount: imagePaths.length,
  //       itemBuilder: (context, index) {
  //         return CustomCard(
  //           imagePath: imagePaths[index],
  //           text: texts[index],
  //           onTap: () {
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(
  //                 builder: (context) => WebviewLuncherScreen(
  //                   webViewUrl: urls[index],
  //                   newspapername: texts[index],
  //                   imagePath: imagePaths[index],
  //                 ),
  //               ),
  //             );
  //           },
  //         );
  //       },
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    if (frompage == 'dashboard') {
      return Scaffold(
        appBar: CommonAppBar(title: 'Newspapers', height: 6.5.h),
        body: _buildGridView(context),
      );
    } else {
      // Use the extracted widget for horizontal scrolling
      return HorizontalNewspaperList(
          imagePaths: imagePaths, texts: texts, urls: urls);
    }
  }

  Widget _buildGridView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.9,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return CustomCard(
            imagePath: imagePaths[index],
            text: texts[index],
            onTap: () => _navigateToWebView(context, index),
          );
        },
      ),
    );
  }

  void _navigateToWebView(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebviewLuncherScreen(
          webViewUrl: urls[index],
          newspapername: texts[index],
          imagePath: imagePaths[index],
        ),
      ),
    );
  }
}
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:newsportal_app/common_card.dart'; // Ensure this import is correct
// import 'package:newsportal_app/utils/app_assets.dart';
// import 'package:newsportal_app/webview_launch_screen.dart';
// import 'package:sizer/sizer.dart';

class HorizontalNewspaperList extends StatefulWidget {
  final List<String> imagePaths;
  final List<String> texts;
  final List<String> urls;

  const HorizontalNewspaperList({
    Key? key,
    required this.imagePaths,
    required this.texts,
    required this.urls,
  }) : super(key: key);

  @override
  _HorizontalNewspaperListState createState() =>
      _HorizontalNewspaperListState();
}

class _HorizontalNewspaperListState extends State<HorizontalNewspaperList> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    const duration = Duration(seconds: 5);
    _timer = Timer.periodic(duration, (timer) {
      if (_scrollController.hasClients) {
        double currentPosition = _scrollController.position.pixels;
        double maxScrollExtent = _scrollController.position.maxScrollExtent;
        double nextPosition =
            currentPosition + 45.w; // Adjust based on your item width
        if (nextPosition > maxScrollExtent) {
          nextPosition = 0; // Restart from beginning if it scrolls over
        }
        _scrollController.animateTo(
          nextPosition,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Accessing the default Scaffold background color from the theme
    Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Container(
      height: 13.h,
      color: backgroundColor,
      // Using the Scaffold's default background color
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            widget.imagePaths.length,
            (index) => Container(
              width: 45.w, // Adjust width to show only 2 items at a time
              padding: EdgeInsets.only(right: 2.w), // Spacing between items
              child: CustomCard(
                imagePath: widget.imagePaths[index],
                text: widget.texts[index],
                onTap: () => _navigateToWebView(context, index),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToWebView(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebviewLuncherScreen(
          webViewUrl: widget.urls[index],
          newspapername: widget.texts[index],
          imagePath: widget.imagePaths[index],
        ),
      ),
    );
  }
}
