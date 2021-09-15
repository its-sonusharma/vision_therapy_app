import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  int position = 0;

  final key = UniqueKey();

  startLoading(String A){
    setState(() {
      position=1;
    });
  }

  doneLoading(String A){
    setState(() {
      position=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reach Us"),
        centerTitle: true,
        backgroundColor: Color(0xFF317C84),
      ),
      body: IndexedStack(
        index: position,
        children: [
          WebView(
            initialUrl: "https://docs.google.com/forms/d/e/1FAIpQLSeubAtLwtB-mJVkcl6jdwGH3Y9TBlu81Jne6xiCnRCQVwX2wg/viewform",
            javascriptMode: JavascriptMode.unrestricted,
            allowsInlineMediaPlayback: true,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            key: key,
            onPageStarted: startLoading,
            onPageFinished: doneLoading,
          ),
          Container(
            color: Colors.white10,
            child: Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }
}