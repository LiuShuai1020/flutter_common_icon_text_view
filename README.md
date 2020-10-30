# 左右两边带有Icon与Text的View
--
当我们日常开发当中，经常会有 左边带icon同时带有文字表述，且右侧有箭头的组件，如下图，

![avatar](https://debug.walkthink.com/Uploads/Picture/2020-10-30/1604063177.png) 

每次切换项目，都要来回copy，在Java/Kotlin中，我已经做好了封装，使用起来很方便，近期项目中涉及到 Flutter 来进行跨平台的工作，下班之后，利用自己的空余时间，把这个小组件进行了封装，你可以很方便的使用它。这个小组件开发很简单，并不是很费事，感兴趣的话可以自己编写，
	
### 主要参数：
	class IconTextView extends StatefulWidget {
	  // 左侧 图标
	  final Widget leftIcon;
	  // 左侧 图标资源地址
	  final String leftIconAsset;
	  // 左侧 文案
	  final String leftText;
	  // 左侧 文案组件
	  final Widget leftTextWidget;
	  // 右侧 文案
	  final String rightText;
	  // 右侧 文案组件
	  final Widget rightTextWidget;
	  // 右侧 图标组件
	  final Widget rightIcon;
	  // 右侧 图标资源地址
	  final String rightIconAsset;
	  // 是否显示右侧箭头，默认显示
	  final bool shotArrow;
	  // 点击事件
	  final VoidCallback onPressed;
	  
	  ...
	  const IconTextView( ...
	  ...
	 }
所有参数都可为空，不需要每次参数都赋值。
### 如何使用？
	基本：
	IconTextView(
	  leftIcon: Icon(Icons.settings),
      leftText: "检查版本",
      onPressed: () {},
    )

就不一一举例了，感兴趣的话，可以直接去 [Github](https://github.com/LiuShuai1020/flutter_common_icon_text_view/blob/main/example/lib/common/icon_text_text_icon/icon_text_view.dart) 下载。

另外说一下我对 Flutter 研发的一点点小的体验吧，整体来说开发速度真的很快，各种 Widget 复用性很高，缺点呢就是布局嵌套很深，需要一点点的试，不过好在编译时的热更新，不用一次次的安装了，对于刚刚接触 Flutter 的同学来讲，在刚开始学习之前，不要急于编写代码，第一步就是要搞清楚 StatefulWidget 与 StatelessWidget 的区别，只有明白这俩的区别，代码写起来才不会晕，网上资料很多，我就不解释了，
	
