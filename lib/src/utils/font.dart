import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

dynamic getFontSize(dynamic sizeValue) {
  if (sizeValue is String && ['small', 'large', 'huge'].contains(sizeValue)) {
    return sizeValue;
  }

  if (sizeValue is double) {
    return sizeValue;
  }

  if (sizeValue is int) {
    return sizeValue.toDouble();
  }

  assert(sizeValue is String);
  final fontSize = double.tryParse(sizeValue);
  if (fontSize == null) {
    throw 'Invalid size $sizeValue';
  }
  return fontSize;
}

final fontsMapping = <String, TextStyle>{
  "mc Laren":GoogleFonts.mcLaren(),
  "Pacifico":GoogleFonts.pacifico(),
  "Open Sans":GoogleFonts.openSans(),
  "Anton":GoogleFonts.anton(),
  "Zcool KuaiLe":GoogleFonts.zcoolKuaiLe(),
  "Maven Pro":GoogleFonts.mavenPro(),
  "Creepster":GoogleFonts.creepster(),
  "Mono":GoogleFonts.jetBrainsMono(),
  "Cookie":GoogleFonts.cookie(),
  "liuJianMaoCao":GoogleFonts.liuJianMaoCao(),
  "Russo One":GoogleFonts.russoOne()};