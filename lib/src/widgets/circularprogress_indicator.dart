import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import '../utils/colors_collectin.dart';

class DisplayCirculatProgressIndicator extends StatelessWidget {
  final Color color = ColorCollection.mainColor;
  final Color backgroundColor = ColorCollection.mainColor;
  final double radius = 10;
  const DisplayCirculatProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS) {
      return CupertinoActivityIndicator(
        radius: radius,
        color: color,
      );
    } else {
      return CircularProgressIndicator(
        color: color,
        backgroundColor: backgroundColor,
      );
    }
  }
}
