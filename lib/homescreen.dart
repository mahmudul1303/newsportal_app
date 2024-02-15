import 'package:flutter/material.dart';
import 'package:newsportal_app/webview_launch_screen.dart';
import 'common_card.dart'; // Make sure this import is correct for your CustomCard class

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> imagePaths = [
    'assets/png/amadersomoy.png',
    'assets/png/bangladesh_protidin.png',
    // Add more image paths as needed
  ];

  final List<String> texts = [
    'Dainik Amadershomoy',
    'Bangladesh Pratidin',
    // Add more texts as needed
  ];
  final List<String> urls = [
    'https://dainikamadershomoy.com/',
    'https://www.bd-pratidin.com/',
    // Add more URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10, // Horizontal space between cards
            mainAxisSpacing: 10, // Vertical space between cards
            childAspectRatio: 1.9, // Aspect ratio of the cards
          ),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return CustomCard(
              imagePath: imagePaths[index],
              text: texts[index],
              // onTap: onTapActions[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WebviewLuncherScreen(
                            webViewUrl: urls[index],
                            newspapername: texts[index],
                          )),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
