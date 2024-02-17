import 'package:flutter/material.dart';
import 'package:newsportal_app/common_app_bar.dart';
import 'package:newsportal_app/utils/app_assets.dart';
import 'package:newsportal_app/webview_launch_screen.dart';
import 'package:sizer/sizer.dart';
import 'common_card.dart'; // Make sure this import is correct for your CustomCard class

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, this.frompage});
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
    'https://www.prothomalo.com/'
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
    'https://ajkalerkhobor.com/'

    // Add more URLs as needed
  ];

  @override
  // Widget build(BuildContext context) {
  // return Padding(
  //   padding: const EdgeInsets.all(8.0),
  //   child: GridView.builder(
  //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 2, // Number of columns
  //       crossAxisSpacing: 10, // Horizontal space between cards
  //       mainAxisSpacing: 10, // Vertical space between cards
  //       childAspectRatio: 1.9, // Aspect ratio of the cards
  //     ),
  //     itemCount: imagePaths.length,
  //     itemBuilder: (context, index) {
  //       return CustomCard(
  //         imagePath: imagePaths[index],
  //         text: texts[index],
  //         // onTap: onTapActions[index],
  //         onTap: () {
  //           Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //                 builder: (context) => WebviewLuncherScreen(
  //                       webViewUrl: urls[index],
  //                       newspapername: texts[index],
  //                       imagePath: imagePaths[index],
  //                     )),
  //           );
  //         },
  //       );
  //     },
  //   ),
  // );
  // }
  Widget build(BuildContext context) {
    return frompage == 'dashboard'
        ? Scaffold(
            appBar: CommonAppBar(
              height: 6.5.h,
              title: 'Newspaper',
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
                    onTap: () {
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
                    },
                  );
                },
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30.h,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return CustomCard(
                    imagePath: imagePaths[index],
                    text: texts[index],
                    onTap: () {
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
                    },
                  );
                },
              ),
            ),
          );
  }
}
