import 'package:flutter/material.dart';

class Loading extends StatelessWidget {

  final double opacity;
  final Color color;
  final Animation<Color> valueColor;

  Loading({
    Key key,
    this.opacity = 0.3,
    this.color = Colors.grey,
    this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Center(
        child: new CircularProgressIndicator()
      );
  }
}