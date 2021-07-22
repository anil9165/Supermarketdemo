import 'package:flutter/material.dart';
import 'colors.dart';

//app theme
final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: kWhiteColor, fontFamily: 'ProductSans',
  backgroundColor: Colors.black,
  primaryColor: kMainColor,
  bottomAppBarColor: kWhiteColor,
  dividerColor: Color(0xffacacac),
  disabledColor: kDisabledColor,
  buttonColor: kMainColor,
  cursorColor: kMainColor,
  indicatorColor: kMainColor,
  accentColor: kMainColor,
  cardColor: Color(0xff1F3C27),
  bottomAppBarTheme: BottomAppBarTheme(color: kMainColor),
  appBarTheme: AppBarTheme(
    color: kTransparentColor,
    elevation: 0.0,
  ),
  //text theme which contains all text styles
  textTheme: TextTheme(
    //default text style of Text Widget
    bodyText1: TextStyle(color: kWhiteColor, fontSize: 18),
    bodyText2: TextStyle(),
    subtitle1: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
    subtitle2: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w400),
    headline3: TextStyle(fontSize: 20),
    headline5: TextStyle(fontWeight: FontWeight.bold),
    headline6: TextStyle(color: kLightTextColor),
    caption: TextStyle(),
    overline: TextStyle(),
    button: TextStyle(
        fontSize: 18, color: kWhiteColor, fontWeight: FontWeight.w500),
  ),
);

