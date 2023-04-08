import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#707070');

  static Color gray5099 = fromHex('#99fafafa');

  static Color gray400 = fromHex('#b7b7b7');

  static Color blueGray400 = fromHex('#848fac');

  static Color gray900 = fromHex('#111111');

  static Color gray90001 = fromHex('#262626');

  static Color gray200 = fromHex('#e7e7e7');

  static Color gray50 = fromHex('#fafafa');

  static Color gray100 = fromHex('#f3f3f3');

  static Color gray9000c = fromHex('#0c111111');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#eff3fa');

  static Color gray10099 = fromHex('#99f3f3f3');

  static Color deepOrange500 = fromHex('#fd5a27');

  static Color deepOrange400 = fromHex('#f7804a');

  static Color blueGray900 = fromHex('#2d2d2d');

  static Color gray90090 = fromHex('#90111111');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
