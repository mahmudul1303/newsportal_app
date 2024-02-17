import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:newsportal_app/common_app_bar.dart';
import 'package:sizer/sizer.dart';

class WebviewLuncherScreen extends StatefulWidget {
  const WebviewLuncherScreen(
      {super.key,
      required this.webViewUrl,
      required this.newspapername,
      required this.imagePath});
  final String webViewUrl;
  final String newspapername;
  final String imagePath;

  @override
  // ignore: library_private_types_in_public_api
  _WebviewLuncherScreenState createState() => _WebviewLuncherScreenState();
}

class _WebviewLuncherScreenState extends State<WebviewLuncherScreen> {
  // late InAppWebViewController _webViewController;
  late String _webViewUrl;

  @override
  void initState() {
    super.initState();
    _webViewUrl = widget.webViewUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CommonAppBar(
      //   height: 6.0.h,
      //   title: 'Webview',
      // ),
      appBar: CommonAppBar(
        finishScreen: true,
        height: 6.5.h,
        image: widget.imagePath,
      ),

      //  AppBar(
      //   backgroundColor: Colors.amber,
      //   centerTitle: true,
      //   title: Image.asset(widget.imagePath),
      // ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(_webViewUrl)),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            cacheEnabled: true,

            //  debuggingEnabled: true,
          ),
        ),
        onWebViewCreated: (controller) {
          // _webViewController = controller;
        },
        onLoadStop: (controller, url) async {
          // Handle load stop event
        },
        onLoadError: (controller, url, code, message) {
          // Handle load error event
        },
        shouldOverrideUrlLoading: (controller, navigationAction) async {
          // Handle URL loading event
          return NavigationActionPolicy.ALLOW;
        },
        onConsoleMessage: (controller, consoleMessage) {
          // Handle console messages (JavaScript console.log)
          print("Console Message Mahmudul: ${consoleMessage.message}");
        },
      ),
    );
  }
}
//  Column(
//         children: [
//           Container(
//             color: Colors.blue,
//             width: double.infinity, // Makes the container take the full width
//             height: 100, // Adjust the height as you need
//           ),
//           Expanded(
//             // Wrap InAppWebView with Expanded to take up all remaining space
//             child: InAppWebView(
//               initialUrlRequest: URLRequest(url: Uri.parse(_webViewUrl)),
//               initialOptions: InAppWebViewGroupOptions(
//                 crossPlatform: InAppWebViewOptions(
//                   cacheEnabled: true,
//                 ),
//               ),
//               onWebViewCreated: (controller) {},
//               onLoadStop: (controller, url) async {},
//               onLoadError: (controller, url, code, message) {},
//               shouldOverrideUrlLoading: (controller, navigationAction) async {
//                 return NavigationActionPolicy.ALLOW;
//               },
//               onConsoleMessage: (controller, consoleMessage) {
//                 print("Console Message: ${consoleMessage.message}");
//               },
//             ),
//           ),
//         ],
//       ),