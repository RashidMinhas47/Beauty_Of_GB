// lib/core/theme/text_styles.dart

import 'package:beauty_of_gb/core/constants/color_schema.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {

  static  TextStyle textButtonStyleDark(
      {double? fontSize, FontWeight? fontWeight,String? fontFamily, Color? color}) => GoogleFonts.getFont(
    fontFamily ?? "Quicksand",
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ??kWhiteColor,
    letterSpacing: 1.2,
  );
  static  TextStyle textButtonStyleLight({double? fontSize,FontWeight? fontWeight}) => GoogleFonts.quicksand(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: kBlackColor,
    letterSpacing: 0.0,
  );

// Define more text styles for other widgets if needed
}
