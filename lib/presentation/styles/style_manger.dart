import 'package:flutter/material.dart';
import 'package:tatware_tast/presentation/styles/font_manager.dart';

TextStyle _getTextStyle (
    FontWeight fontWeight,
    double fontSize,
    Color color)
{
  return TextStyle(
    fontFamily: FontConstant.fontFamily,
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: color,
  );
}

TextStyle getRegularStyle ({
  double fontSize = FontSize.s14,
  required Color color,
})
{
  return _getTextStyle(FontWeightManager.regular, fontSize, color);
}

TextStyle getMediumStyle ({
  double fontSize = FontSize.s14 ,
  required Color color, })
{
  return _getTextStyle(FontWeightManager.medium, fontSize , color);
}

TextStyle getSemiBoldStyle ({
  double fontSize = FontSize.s14 ,
  required Color color, })
{
  return _getTextStyle(FontWeightManager.semiBold, fontSize, color);
}

TextStyle getBoldStyle ({
  double fontSize = FontSize.s14 ,
  required Color color, })
{
  return _getTextStyle(FontWeightManager.bold, fontSize, color);
}