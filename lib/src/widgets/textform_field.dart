import 'package:flutter/material.dart';

import '../utils/colors_collection.dart';

// ignore: must_be_immutable
class DisplayTextFormField extends StatelessWidget {
  final double height;
  final String hintText;
  final bool isSecure;
  final bool isnumberKeyboard;
  final int maxLine;
  final int? inputfieldLimit;
  final Widget? suffixIcon;
  final double horizontalMargin;
  final double verticalMargin;
  final bool isEnabled;
  final double borderRadius;

  final double leftpadding;
  final double toppadding;
  final double righpadding;
  final double bottompadding;

  TextEditingController? textFieldController;
  String? Function(String?)? validateField;
  final Color bordersideColor;
  final Color errorbordersideColorideColor;

  TextStyle? hintStyle = const TextStyle(color: ColorCollection.mainColor);

  DisplayTextFormField({
    Key? key,
    this.height = 40,
    this.hintText = '',
    this.isSecure = false,
    this.isnumberKeyboard = false,
    this.maxLine = 1,
    this.inputfieldLimit,
    this.suffixIcon,
    this.horizontalMargin = 0,
    this.verticalMargin = 0,
    this.borderRadius = 0,
    this.isEnabled = true,
    this.bordersideColor = ColorCollection.mainColor,
    this.errorbordersideColorideColor = ColorCollection.errorColor,
    this.validateField,
    required this.textFieldController,
    this.hintStyle,
    this.leftpadding = 0,
    this.toppadding = 0,
    this.righpadding = 0,
    this.bottompadding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: verticalMargin,
      ),
      child: TextFormField(
        controller: textFieldController,
        enabled: isEnabled ? true : false,
        obscureText: isSecure,
        cursorColor: ColorCollection.mainColor,
        maxLines: maxLine,
        validator: validateField,
        keyboardType: isnumberKeyboard
            ? TextInputType.number
            : TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: toppadding,
            bottom: bottompadding,
            left: leftpadding,
            right: righpadding,
          ),
          // errorStyle: const TextStyle(fontSize: 10),
          // errorMaxLines: 01,
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: bordersideColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: bordersideColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: errorbordersideColorideColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: bordersideColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
