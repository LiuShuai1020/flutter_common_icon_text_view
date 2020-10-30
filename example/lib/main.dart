import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:icontextview/icontextview.dart';

import 'common/icon_text_text_icon/icon_text_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await Icontextview.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text("示例: leftText: \"xxx\",onPressed: () {},"),
                ),
                IconTextView(
                  leftText: "检查版本",
                  onPressed: () {},
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "示例:\nleftIcon: Icon(Icons.settings),\nleftTextWidget: Text(\"xxx\"),\nonPressed: () {},"),
                ),
                IconTextView(
                  leftIcon: Icon(Icons.settings),
                  leftTextWidget: Text("检查版本"),
                  onPressed: () {},
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "示例:\nleftIcon: Icon(Icons.settings),\nleftTextWidget: Text(\"xxx\"),\nrightText: \"v1.0.1\",\nonPressed: () {},"),
                ),
                IconTextView(
                  leftIcon: Icon(Icons.settings),
                  leftTextWidget: Text("检查版本"),
                  rightText: "v1.0.1",
                  onPressed: () {},
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "示例: \nleftIconAsset: \"assets/images/flutter_icon_laba.png\", \nleftTextWidget: Text(\"xxx\"), \nrightText: \"v1.0.1\", \nonPressed: () {},"),
                ),
                IconTextView(
                  leftIconAsset: "assets/images/flutter_icon_laba.png",
                  leftTextWidget: Text("检查版本"),
                  rightText: "v1.0.1",
                  onPressed: () {},
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "示例:\nleftIcon: Icon(Icons.settings),\nleftTextWidget: Text(\"xxx\"),\nrightText: \"v1.0.1\",\nrightIcon: Icon(Icons.arrow_forward),\nshotArrow: false,\nonPressed: (){},"),
                ),
                IconTextView(
                  leftIcon: Icon(Icons.settings),
                  leftTextWidget: Text("检查版本"),
                  rightText: "v1.0.1",
                  rightIcon: Icon(Icons.arrow_forward),
                  shotArrow: false,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}