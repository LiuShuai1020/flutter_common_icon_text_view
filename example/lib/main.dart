import 'package:flutter/material.dart';

import 'common/icon_text_text_icon/icon_text_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    final Color color = Color(0xFF00B0FF);
    final Color textColor = Colors.white;
    final double textSize = 15;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('左右两边带有Icon与Text的View'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(10),
                    height: 160,
                    alignment: Alignment.center,
                    child: Text("基本使用：\n\nIconTextView(\n\t\t\t\tleftText: \"检查版本\",\n\t\t\t\tonPressed: () {}\n)", style: TextStyle(color: Colors.white, fontSize: 16),)
                ),
                Container(
                  color: color,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 0, bottom: 0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text("示例: 左边[文字]，右边[箭头]", style: TextStyle(color: textColor, fontSize: textSize)),
                      Icon(Icons.arrow_downward, color: Colors.white,),
                    ],
                  )
                ),
                IconTextView(
                  leftText: "检查版本",
                  onPressed: () {},
                ),
                Container(
                    color: color,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 0, bottom: 0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text("示例: 左边[Icon组件,Text组件]，右边[箭头]", style: TextStyle(color: textColor, fontSize: textSize)),
                        Icon(Icons.arrow_downward, color: Colors.white,),
                      ],
                    )
                ),
                IconTextView(
                  leftIcon: Icon(Icons.settings),
                  leftTextWidget: Text("检查版本"),
                  onPressed: () {},
                ),
                Container(
                    color: color,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 0, bottom: 0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text("示例: 左边[Icon组件,Text组件]，右边[文字,箭头]", style: TextStyle(color: textColor, fontSize: textSize)),
                        Icon(Icons.arrow_downward, color: Colors.white,),
                      ],
                    )
                ),
                IconTextView(
                  leftIcon: Icon(Icons.settings),
                  leftTextWidget: Text("检查版本"),
                  rightText: "v1.0.1",
                  onPressed: () {},
                ),
                Container(
                    color: color,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 0, bottom: 0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text("示例: 左边[图片资源地址,Text组件]，右边[文字,箭头]", style: TextStyle(color: textColor, fontSize: textSize)),
                        Icon(Icons.arrow_downward, color: Colors.white,),
                      ],
                    )
                ),
                IconTextView(
                  leftIconAsset: "assets/images/flutter_icon_laba.png",
                  leftTextWidget: Text("检查版本"),
                  rightText: "v1.0.1",
                  onPressed: () {},
                ),
                Container(
                    color: color,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 0, bottom: 0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text("示例: 左边[Icon组件,Text组件]，右边[文字,Icon组件] 隐藏默认箭头", style: TextStyle(color: textColor, fontSize: textSize)),
                        Icon(Icons.arrow_downward, color: Colors.white,),
                      ],
                    )
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