import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors_collection.dart';

class DisplayCirculatProgressIndicator extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final double radius;
  final double strokeWidth;
  const DisplayCirculatProgressIndicator({
    this.color = ColorCollection.supportColor,
    this.backgroundColor = ColorCollection.mainColor,
    this.strokeWidth = 2.4,
    this.radius = 14,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS) {
      return CupertinoActivityIndicator(
        radius: radius,
        color: backgroundColor,
      );
    } else {
      return CircularProgressIndicator(
        color: color,
        backgroundColor: backgroundColor,
        strokeWidth: strokeWidth,
      );
    }
  }
}
