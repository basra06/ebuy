import 'package:flutter/material.dart';

class EChipTheme {
  EChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.white),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
      checkmarkColor: Colors.white);
  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.white),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
      checkmarkColor: Colors.white);
}
