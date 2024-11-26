import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';

extension FontWeightExtension on BuildContext {
  TextStyle get extraLight => CupertinoTheme.of(this).textTheme.textStyle.copyWith(fontFamily: "Fustat-ExtraLight");

  TextStyle get light => CupertinoTheme.of(this).textTheme.textStyle.copyWith(fontFamily: "Fustat-Light");

  TextStyle get regular => CupertinoTheme.of(this).textTheme.textStyle.copyWith(fontFamily: "Fustat-Regular");

  TextStyle get medium => CupertinoTheme.of(this).textTheme.textStyle.copyWith(fontFamily: "Fustat-Medium");

  TextStyle get semiBold => CupertinoTheme.of(this).textTheme.textStyle.copyWith(fontFamily: "Fustat-SemiBold");

  TextStyle get bold => CupertinoTheme.of(this).textTheme.textStyle.copyWith(fontFamily: "Fustat-Bold");

  TextStyle get extraBold => CupertinoTheme.of(this).textTheme.textStyle.copyWith(fontFamily: "Fustat-ExtraBold");
}

extension UIThemeExtension on BuildContext {
  TextStyle get title => extraBold.copyWith(
        fontSize: 24,
        color: AppColors.primaryWhite,
      );

  TextStyle get heading => extraBold.copyWith(
        fontSize: 16,
        letterSpacing: -0.5,
        color: AppColors.primaryWhite,
      );

  TextStyle get subHeading => bold.copyWith(
        fontSize: 16,
        letterSpacing: -0.5,
        color: AppColors.primaryWhite,
      );

  TextStyle get caption => medium.copyWith(
        fontSize: 12,
        letterSpacing: -0.5,
        color: AppColors.secondaryWhite.withOpacity(0.75),
      );

  TextStyle get body => medium.copyWith(
        fontSize: 12,
        letterSpacing: -0.2,
        color: AppColors.primaryWhite,
      );

  TextStyle get action => extraBold.copyWith(
        fontSize: 8,
        letterSpacing: -0.2,
        color: AppColors.backgroundBlack,
      );
}

extension BottomNavItemExtension on IconData {
  BottomNavigationBarItem toNavBarItem(String label) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Icon(
          this, // "this" refers to the IconData instance
          size: 24,
        ),
      ),
      label: label,
    );
  }
}
