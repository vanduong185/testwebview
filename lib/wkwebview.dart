import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWKWebview extends StatefulWidget {
  final url;
  MyWKWebview({Key key, this.url}) : super(key: key);

  _MyWKWebviewState createState() => _MyWKWebviewState();
}

class _MyWKWebviewState extends State<MyWKWebview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
        // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
      ),
      // We're using a Builder here so we have a context that is below the Scaffold
      // to allow calling Scaffold.of(context) so we can show a snackbar.
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
        );
      })
    );
  }
}