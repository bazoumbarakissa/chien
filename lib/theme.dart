import'package:flutter/material.dart';

import 'contants.dart';



ThemeData lightThemeData(BuildContext context) {
  var KPrimaryColor;
  var appBarTheme;
  var kContentColorLigthtTheme;
  var kErrorColor;
  var Colorscheme;
  var KContextColorLightTheme;
  return ThemeData.light().copyWith(
    primaryColor: KPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme:appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLigthtTheme),
  );
}
ThemeData darkThemeData(BuildContext context){
  var appBarTheme;
  var KContentColorLightTheme;
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: KContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme:IconThemeData(color:kContentColorDarkTheme),
  
  );
}