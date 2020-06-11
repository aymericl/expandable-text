import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final Text text;
  final int durationMS;
  final double maxHeight;

  ExpandableText({@required this.text, @required this.durationMS, @required this.maxHeight});

  @override
  _ExpandableTextState createState() => new _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new AnimatedSize(
          vsync: this,
          duration: Duration(milliseconds: widget.durationMS),
          child: new ConstrainedBox(
              constraints:isExpanded
                  ? new BoxConstraints()
                  : new BoxConstraints(maxHeight: widget.maxHeight),
              child: new GestureDetector(
                  onTap: () => setState(() => isExpanded = !isExpanded),
                  child: widget.text))),
    ]);
  }
}
