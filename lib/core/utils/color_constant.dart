import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black90087 = fromHex('#87000000');

  static Color black9000a = fromHex('#0a000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray900 = fromHex('#1e2022');

  static Color lightBlueA200 = fromHex('#40bfff');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50 = fromHex('#f9f9f9');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
