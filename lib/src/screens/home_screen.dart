import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';



class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  
  Widget _icon(BuildContext context){
    return  IconButton(
      icon: Icon(Icons.settings),
      onPressed: (){
        Navigator.pushNamed(context, '/form');
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    final Completer<WebViewController> _controller = Completer<WebViewController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Smart track GPS"),
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          _icon(context),
        ],
      ),
      body: WebView(
        initialUrl: 'https://pub.dev',
        onWebViewCreated: (WebViewController webViewController){
          _controller.complete(webViewController);
        },
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}