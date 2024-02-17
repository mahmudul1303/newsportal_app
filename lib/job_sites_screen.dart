import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsportal_app/common_app_bar.dart';
import 'package:newsportal_app/utils/app_assets.dart';
import 'package:newsportal_app/webview_launch_screen.dart';
import 'package:sizer/sizer.dart';
import 'common_card.dart'; // Make sure this import is correct for your CustomCard class

class JobSiteScrren extends StatelessWidget {
  JobSiteScrren({super.key, this.frompage});
  final String? frompage;
  final List<String> imagePaths = [
    AppAssets.bdjobs,
    AppAssets.bikroyjob,
    AppAssets.bdjobstoday,
    AppAssets.carrerjet,
    AppAssets.jagojobs,
    AppAssets.jobcom,
    AppAssets.nrbjobs,
    AppAssets.skilljobs,

    // Add more image paths as needed
  ];

  final List<String> texts = [
    'BD Jobs',
    'Bikroy Jobs',
    'BD Jobs Today',
    'Career JET',
    'Jago Jobs',
    'Job Com BD',
    'NRB Jobs',
    'Skill Jobs',
  ];
  final List<String> urls = [
    'https://www.bdjobs.com/',
    'https://bikroy.com/en/ads/bangladesh/jobs',
    'https://www.bdjobstoday.com/',
    'https://www.careerjet.com/',
    'https://www.jagojobs.com/',
    'https://www.job.com.bd/',
    'https://www.nrbjobs.com/',
    'https://skill.jobs/',

    // Add more URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    if (frompage == 'dashboard') {
      return Scaffold(
        appBar: CommonAppBar(title: 'Job Sites', height: 6.5.h),
        body: _buildGridView(context),
      );
    } else {
      // Use the extracted widget for horizontal scrolling
      return HorizontalJobSiteList(
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

class HorizontalJobSiteList extends StatefulWidget {
  final List<String> imagePaths;
  final List<String> texts;
  final List<String> urls;

  const HorizontalJobSiteList({
    Key? key,
    required this.imagePaths,
    required this.texts,
    required this.urls,
  }) : super(key: key);

  @override
  _HorizontalJobSiteListState createState() => _HorizontalJobSiteListState();
}

class _HorizontalJobSiteListState extends State<HorizontalJobSiteList> {
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
