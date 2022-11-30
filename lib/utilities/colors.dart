import 'package:flutter/material.dart';

final Color kColorWhite = HexColor.fromHex('#FFFFFF');
final Color kColorBlack = HexColor.fromHex('#000000');
final Color kColorGrey = HexColor.fromHex('#B8B8B8');
final Color kColorGreyPrimary = HexColor.fromHex('#e1edf0');
final Color kColorSplash = HexColor.fromHex('#e1edf0');
final Color kColorSearchIcon = HexColor.fromHex('#FC6A03');

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
