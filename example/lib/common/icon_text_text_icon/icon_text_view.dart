import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconTextView extends StatefulWidget {
  final Widget leftIcon;
  final String leftIconAsset;
  final String leftText;
  final Widget leftTextWidget;
  final String rightText;
  final Widget rightTextWidget;
  final Widget rightIcon;
  final String rightIconAsset;
  final bool shotArrow;
  final VoidCallback onPressed;

  const IconTextView(
      {Key key,
      this.leftIcon,
      this.leftIconAsset,
      this.leftText,
      this.leftTextWidget,
      this.rightText,
      this.rightTextWidget,
      this.rightIcon,
      this.rightIconAsset,
      this.onPressed,
      this.shotArrow = true})
      : super(key: key);

  @override
  _IconTextViewState createState() => _IconTextViewState();
}

class _IconTextViewState extends State<IconTextView> {
  bool _isClickDown = false;

  @override
  Widget build(BuildContext context) {
    final List<Widget> leftList = [];
    final List<Widget> rightList = [];

    if (widget.leftIcon != null) {
      leftList.add(Container(
        padding: EdgeInsets.only(left: 0, right: 10),
        child: widget.leftIcon,
      ));
    }

    if (widget.leftIconAsset != null) {
      Widget leftIconAssetWidget = Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Image.asset(widget.leftIconAsset, width: 36, height: 36),
      );
      leftList.add(leftIconAssetWidget);
    }

    if (widget.leftText != null) {
      leftList.add(Container(
          padding: EdgeInsets.only(left: 0),
          child: Text(widget.leftText, style: TextStyle(fontSize: 16))));
    }

    if (widget.leftTextWidget != null) {
      leftList.add(widget.leftTextWidget);
    }

    if (widget.rightText != null) {
      rightList.add(Text(
        widget.rightText,
        style: TextStyle(fontSize: 15),
      ));
    }

    if (widget.rightTextWidget != null) {
      rightList.add(widget.rightTextWidget);
    }

    if (widget.rightIcon != null) {
      rightList.add(widget.rightIcon);
    }

    if (widget.rightIconAsset != null) {
      Widget leftIconAssetWidget = Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Image.asset(widget.rightIconAsset, width: 36, height: 36),
      );
      rightList.add(leftIconAssetWidget);
    }

    if (widget.shotArrow) {
      Widget leftIconAssetWidget = Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Icon(Icons.chevron_right),
      );
      rightList.add(leftIconAssetWidget);
    }

    void _onViewClickDown(TapDownDetails d) {
      setState(() {
        _isClickDown = true;
      });
    }

    void _onViewClickUp(TapUpDetails d) {
      setState(() {
        _isClickDown = false;
      });
    }

    void _onViewClickCancel() {
      setState(() {
        _isClickDown = false;
      });
    }

    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: _onViewClickDown,
      onTapUp: _onViewClickUp,
      onTapCancel: _onViewClickCancel,
      child: Container(
//          color: isClickDown ? Colors.red : Colors.white,
          height: 56,
          decoration: BoxDecoration(
              color: _isClickDown ? Color(0xFFEEEEEE) : Colors.white),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 10,
                top: 0,
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: leftList.toList(),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: rightList.toList(),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Divider(
                  height: 1,
                  color: Colors.grey,
                ),
              )
            ],
          )),
    );
  }
}
