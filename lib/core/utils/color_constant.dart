import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blue900 = fromHex('#1958a3');

  static Color gray900Bf = fromHex('#bf131416');

  static Color blueGray200 = fromHex('#b0b4c3');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#777e90');

  static Color gray800 = fromHex('#353945');

  static Color gray900 = fromHex('#131416');

  static Color gray90001 = fromHex('#131313');

  static Color lightGreen200 = fromHex('#cee79b');

  static Color gray200 = fromHex('#e5e8eb');

  static Color green50 = fromHex('#e8f4d9');

  static Color blue9006c = fromHex('#6c1958a3');

  static Color teal200 = fromHex('#6ecdcd');

  static Color gray50 = fromHex('#fbfcfc');

  static Color gray100 = fromHex('#f4f5f6');

  static Color yellow8006c = fromHex('#6cf79b1d');

  static Color lightGreen500 = fromHex('#8dc642');

  static Color yellow800 = fromHex('#f79b1d');

  static Color whiteA700 = fromHex('#ffffff');

  static Color primary1 = fromHex('#8DC642');
  static Color primary2 = fromHex('#1958A3');
  static Color primary3 = fromHex('#F79B1D');
  static Color diveded = fromHex('#B1B5C3');
  static Color defaultColor = fromHex('#141416');
  static Color neutral6 = fromHex('#E6E8EC');
  static Color neutral4 = fromHex('#777E90');


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
