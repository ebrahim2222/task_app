import 'package:flutter/material.dart';
import 'package:test_app/core/values/font_size_manager.dart';

TextStyle _getTextStyle(
    double fontSize, FontWeight fontWeight, Color fontColor) {
  return TextStyle(
      fontSize: fontSize, fontWeight: fontWeight, color: fontColor);
}

TextStyle getReqularStyle({double fontSize = FontSizeManager.s12, color}) {
  return _getTextStyle(fontSize, FontWeightManager.reqular, color);
}
