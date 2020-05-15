import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewIndicator extends StatefulWidget {
  final Color _colorFirstLine;
  final Color _colorSecondLine;

  PageViewIndicator(this._colorFirstLine, this._colorSecondLine);

  @override
  createState() =>
      new _PageViewIndicatorState(_colorFirstLine, _colorSecondLine);
}

class _PageViewIndicatorState extends State<PageViewIndicator> {

  Color colorFirstLine;
  Color colorSecondLine;

  _PageViewIndicatorState(this.colorFirstLine, this.colorSecondLine);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: new Row(
        children: <Widget>[
          Icon(
            Icons.linear_scale,
            color: colorFirstLine,
          ),
          new Icon(Icons.linear_scale, color: colorSecondLine),
          new Icon(
            Icons.exposure_plus_1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  @override
  void setState(fn) {
    print("setState widget");
    this.colorFirstLine = colorFirstLine;
    this.colorSecondLine = colorSecondLine;
    // TODO: implement setState
    super.setState(fn);
  }
}
