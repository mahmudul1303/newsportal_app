// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class LiveNewsScreen extends StatefulWidget {
//   @override
//   _LiveNewsScreenState createState() => _LiveNewsScreenState();
// }

// class _LiveNewsScreenState extends State<LiveNewsScreen> {
//   final List<String> _videoIds = [
//     'https://www.youtube.com/watch?v=RotcDrTEW_0',
//     'https://www.youtube.com/watch?v=e6WQVJMDEfY',
//     'https://www.youtube.com/watch?v=RnIhXHbfWuA',
//     'https://www.youtube.com/watch?v=eqFbPey0Ohw',
//     'https://www.youtube.com/watch?v=m1BeZVgu0dc',
//   ];

//   List<YoutubePlayerController> _controllers = [];

//   @override
//   void initState() {
//     super.initState();
//     _controllers = _videoIds.map<YoutubePlayerController>((url) {
//       // Extract video ID from URL
//       String videoId = YoutubePlayer.convertUrlToId(url)!;
//       return YoutubePlayerController(
//         initialVideoId: videoId,
//         flags: YoutubePlayerFlags(
//           autoPlay: false, // Ensure videos don't autoplay
//           mute: false, // Videos are not muted by default
//           // Additional flags can be set here
//         ),
//       );
//     }).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 24.0.h,
//       child: ListView.builder(
//         itemCount: _controllers.length,
//         itemBuilder: (context, index) {
//           return YoutubePlayerBuilder(
//             player: YoutubePlayer(
//               controller: _controllers[index],
//             ),
//             builder: (context, player) {
//               return Column(
//                 children: [
//                   player, // Display the YouTube player
//                   SizedBox(height: 8), // Add space between video players
//                 ],
//               );
//             },
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     // Dispose of all controllers to free up resources
//     _controllers.forEach((controller) => controller.dispose());
//     super.dispose();
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class LiveNewsScreen extends StatefulWidget {
//   @override
//   _LiveNewsScreenState createState() => _LiveNewsScreenState();
// }

// class _LiveNewsScreenState extends State<LiveNewsScreen> {
//   final List<String> _videoIds = [
//     'https://www.youtube.com/watch?v=RotcDrTEW_0',
//     'https://www.youtube.com/watch?v=e6WQVJMDEfY',
//     'https://www.youtube.com/watch?v=RnIhXHbfWuA',
//     'https://www.youtube.com/watch?v=eqFbPey0Ohw',
//     'https://www.youtube.com/watch?v=m1BeZVgu0dc',
//   ];

//   List<YoutubePlayerController> _controllers = [];

//   @override
//   void initState() {
//     super.initState();
//     _controllers = _videoIds.map<YoutubePlayerController>((url) {
//       // Extract video ID from URL
//       String videoId = YoutubePlayer.convertUrlToId(url)!;
//       return YoutubePlayerController(
//         initialVideoId: videoId,
//         flags: YoutubePlayerFlags(
//           autoPlay: false, // Ensure videos don't autoplay
//           mute: false, // Videos are not muted by default
//         ),
//       );
//     }).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100.0.h, // Adjust height as needed or remove for full screen
//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 1, // Number of columns
//           childAspectRatio: 1.8, // Aspect ratio of each item
//           crossAxisSpacing: 2.w, // Horizontal space between items
//           mainAxisSpacing: 2.w, // Vertical space between items
//         ),
//         itemCount: _controllers.length,
//         itemBuilder: (context, index) {
//           return YoutubePlayerBuilder(
//             player: YoutubePlayer(
//               controller: _controllers[index],
//             ),
//             builder: (context, player) {
//               return Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 // padding: EdgeInsets.all(1.w), // Padding around each player
//                 child: player, // Display the YouTube player
//               );
//             },
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     // Dispose of all controllers to free up resources
//     _controllers.forEach((controller) => controller.dispose());
//     super.dispose();
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// import 'vedio_palyer_screen.dart';

// class LiveNewsScreen extends StatefulWidget {
//   const LiveNewsScreen({super.key});

//   @override
//   _LiveNewsScreenState createState() => _LiveNewsScreenState();
// }

// class _LiveNewsScreenState extends State<LiveNewsScreen> {
//   final List<String> _videoIds = [
//     'RotcDrTEW_0',
//     'e6WQVJMDEfY',
//     'RnIhXHbfWuA',
//     'eqFbPey0Ohw',
//     'm1BeZVgu0dc',
//   ];

//   YoutubePlayerController?
//       _activeController; // Correctly declare the active controller
//   int _activeIndex = -1; // Track the index of the currently playing video

//   @override
//   void initState() {
//     super.initState();
//   }

//   void initializeAndPlay(String videoId) {
//     if (_activeController != null) {
//       _activeController!.dispose(); // Dispose the current controller if exists
//     }
//     _activeController = YoutubePlayerController(
//       initialVideoId: videoId,
//       flags: const YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//       ),
//     );

//     // Force rebuild to update the player
//     if (mounted) {
//       setState(() {});
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 20.h, // Adjust based on your layout
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         itemCount: _videoIds.length,
//         separatorBuilder: (context, _) => SizedBox(width: 2.w),
//         itemBuilder: (context, index) {
//           final videoId = _videoIds[index];
//           final thumbnailUrl =
//               'https://img.youtube.com/vi/$videoId/mqdefault.jpg';
//           return GestureDetector(
//             onTap: () {
//               print('Vedio id ${videoId}');
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => VideoPlayerScreen(
//                     videoId: videoId,
//                   ),
//                 ),
//               );
//               //   setState(() {
//               //     _activeIndex = index;
//               //   });
//               //   initializeAndPlay(videoId);
//             },
//             child: _activeIndex == index && _activeController != null
//                 ? SizedBox(
//                     width: 80.w,
//                     child: YoutubePlayer(
//                       controller: _activeController!,
//                       showVideoProgressIndicator: true,
//                     ),
//                   )
//                 : SizedBox(
//                     width: 80.w,
//                     child: ClipRRect(
//                       borderRadius:
//                           BorderRadius.circular(10), // Apply border radius

//                       child: Image.network(
//                         thumbnailUrl,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _activeController?.dispose(); // Dispose the active controller if exists
//     super.dispose();
//   }
// }
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'vedio_palyer_screen.dart';

class LiveNewsScreen extends StatefulWidget {
  const LiveNewsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LiveNewsScreenState createState() => _LiveNewsScreenState();
}

class _LiveNewsScreenState extends State<LiveNewsScreen> {
  final List<String> _videoIds = [
    'RotcDrTEW_0',
    'e6WQVJMDEfY',
    'RnIhXHbfWuA',
    'eqFbPey0Ohw',
    'm1BeZVgu0dc',
  ];

  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    const duration = Duration(seconds: 5);
    _timer = Timer.periodic(duration, (Timer timer) {
      if (_scrollController.hasClients) {
        double currentPosition = _scrollController.position.pixels;
        double maxScrollPosition = _scrollController.position.maxScrollExtent;

        double nextPosition =
            currentPosition + 80.w; // Adjust based on your item width
        if (nextPosition > maxScrollPosition) {
          nextPosition = 0; // Start from the beginning if it scrolls to the end
          _scrollController.jumpTo(nextPosition);
        } else {
          _scrollController.animateTo(
            nextPosition,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h, // Adjust based on your layout
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: _videoIds.length,
        separatorBuilder: (context, _) => SizedBox(width: 2.w),
        itemBuilder: (context, index) {
          final videoId = _videoIds[index];
          final thumbnailUrl =
              'https://img.youtube.com/vi/$videoId/mqdefault.jpg';
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen(videoId: videoId),
                ),
              );
            },
            child: SizedBox(
              width: 80.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Apply border radius
                child: Image.network(
                  thumbnailUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer
    _scrollController.dispose(); // Dispose the scroll controller
    super.dispose();
  }
}
