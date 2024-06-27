import 'package:flutter/material.dart';

class AppStyles {
  static const double defaultPadding = 16.0;
  static const double defaultMargin = 16.0;
  static const double defaultBorderRadius = 8.0;

  static const EdgeInsets defaultPaddingInsetsAll = EdgeInsets.all(defaultPadding);
  static const EdgeInsets defaultPaddingInsetsVertical = EdgeInsets.symmetric(vertical: defaultPadding);
  static const EdgeInsets defaultPaddingInsetsHorizontal = EdgeInsets.symmetric(horizontal: defaultPadding);
  static const EdgeInsets defaultMarginInsets = EdgeInsets.all(defaultMargin);

  static const Radius defaultRadiusCirluar = Radius.circular(defaultBorderRadius);

  static const BoxDecoration defaultBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(defaultRadiusCirluar),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 4.0,
        offset: Offset(2.0, 2.0),
      ),
    ],
  );
}
