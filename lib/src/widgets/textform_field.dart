import 'package:flutter/material.dart';

import '../utils/colors_collectin.dart';

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

  TextEditingController? textFieldController;
  String? Function(String?)? validateField;
  final Color bordersideColor;
  final Color errorbordersideColorideColor;

  TextStyle? hintStyle = const TextStyle(color: ColorCollection.mainColor);

  DisplayTextFormField({
    Key? key,
    this.height = 35,
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
    required this.validateField,
    required this.textFieldController,
    this.hintStyle,
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
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 0,
            left: 28,
            right: 10,
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
