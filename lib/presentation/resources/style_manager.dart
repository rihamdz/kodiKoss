
import 'package:flutter/material.dart';
import 'package:kodikoss/presentation/resources/font_manager.dart';

TextStyle _getTextstyle(double fontsize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontsize,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

//regular style
TextStyle getRegularStyle(
    {double fontSize = Fontsize.s12, required Color color}) {
  return _getTextstyle(fontSize, FontWeightManager.regular, color);
}

//medium style
TextStyle getMediumStyle(
    {double fontSize = Fontsize.s12, required Color color}) {
  return _getTextstyle(fontSize, FontWeightManager.medium, color);
}

//medium style
TextStyle getLightStyle(
    {double fontSize = Fontsize.s12, required Color color}) {
  return _getTextstyle(fontSize, FontWeightManager.light, color);
}

//bold style
TextStyle getBoldStyle({double fontSize = Fontsize.s12, required Color color}) {
  return _getTextstyle(fontSize, FontWeightManager.bold, color);
}

//semibold style
TextStyle getSemiBoldStyle(
    {double fontSize = Fontsize.s12, required Color color}) {
  return _getTextstyle(fontSize, FontWeightManager.semibold, color);
}
