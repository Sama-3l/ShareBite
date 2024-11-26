import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';

CupertinoThemeData get theme {
  return const CupertinoThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryWhite,
      textTheme: CupertinoTextThemeData(
          tabLabelTextStyle: TextStyle(fontFamily: "Fustat", fontSize: 12, color: AppColors.primaryWhite),
          textStyle: TextStyle(
            fontFamily: "Fustat",
            fontSize: 24,
          )));
}
