import 'package:flutter/material.dart';

class KeyboardHelper {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}
