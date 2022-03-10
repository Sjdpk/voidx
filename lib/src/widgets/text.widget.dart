import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String title;
  final Color? textColor;
  final double textFontSize;
  final double textLetterSpacing;
  final FontWeight textFontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDecoration textDecoration;
  final FontStyle fontStyle;
  final bool softWrap;
  final TextOverflow? textOverflow;
  final double? decorationThickness;
  final Color lineDecorationColor;
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;

  const DisplayText({
    Key? key,
    required this.title,
    this.textColor,
    this.textFontSize = 14,
    this.textLetterSpacing = 0,
    this.textFontWeight = FontWeight.normal,
    this.maxLines,
    this.textAlign,
    this.textDecoration = TextDecoration.none,
    this.fontStyle = FontStyle.normal,
    this.softWrap = false,
    this.textOverflow,
    this.decorationThickness,
    this.lineDecorationColor = Colors.black,
    this.leftPadding = 0,
    this.rightPadding = 0,
    this.topPadding = 0,
    this.bottomPadding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding,
        right: rightPadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Text(
        title,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: textFontSize,
          fontWeight: textFontWeight,
          letterSpacing: textLetterSpacing,
          color: textColor,
          fontStyle: fontStyle,
          decorationColor: lineDecorationColor,
          decoration: textDecoration,
          decorationThickness: decorationThickness,
        ),
      ),
    );
  }
}

Widget displayText(
  String title, {
  Color? textColor,
  double textFontSize = 14,
  double textLetterSpacing = 0,
  FontWeight textFontWeight = FontWeight.normal,
  int? maxLines,
  TextAlign? textAlign,
  TextDecoration textDecoration = TextDecoration.none,
  FontStyle fontStyle = FontStyle.normal,
  bool softWrap = false,
  TextOverflow? textOverflow,
  double? decorationThickness,
  Color lineDecorationColor = Colors.black,
  double leftPadding = 0,
  double rightPadding = 0,
  double topPadding = 0,
  double bottomPadding = 0,
}) {
  return Padding(
    padding: EdgeInsets.only(
      left: leftPadding,
      right: rightPadding,
      top: topPadding,
      bottom: bottomPadding,
    ),
    child: Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: textFontSize,
        fontWeight: textFontWeight,
        letterSpacing: textLetterSpacing,
        color: textColor,
        fontStyle: fontStyle,
        decorationColor: lineDecorationColor,
        decoration: textDecoration,
        decorationThickness: decorationThickness,
      ),
    ),
  );
}
