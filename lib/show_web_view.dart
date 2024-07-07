import 'package:flutter/material.dart';
import 'package:islam_call/main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowWepView extends StatefulWidget {
  const ShowWepView({super.key});

  @override
  State<ShowWepView> createState() => _ShowWepViewState();
}

class _ShowWepViewState extends State<ShowWepView> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('https://islam-call.com/'));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('              Islam Call'),
        backgroundColor: Color.fromARGB(255, 111, 28, 2),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
