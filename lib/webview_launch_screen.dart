import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:sizer/sizer.dart';

import 'common_app_bar.dart';

class WebviewLuncherScreen extends StatefulWidget {
  const WebviewLuncherScreen({super.key, required this.webViewUrl});
  final String webViewUrl;

  @override
  _WebviewLuncherScreenState createState() => _WebviewLuncherScreenState();
}

class _WebviewLuncherScreenState extends State<WebviewLuncherScreen> {
  // late InAppWebViewController _webViewController;
  late String _webViewUrl;

  @override
  void initState() {
    super.initState();
    _webViewUrl = widget.webViewUrl;
    // 'https://www.termsfeed.com/live/cdd80def-c35e-4eaf-b0ec-47acaebced83';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CommonAppBar(
      //   height: 6.0.h,
      //   title: 'Webview',
      // ),
      appBar: AppBar(
        title: Text('WebView Example'),
      ),
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
          print("Console Message Akib: ${consoleMessage.message}");
        },
      ),
    );
  }
}
