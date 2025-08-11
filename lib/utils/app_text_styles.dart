import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle h1 = GoogleFonts.poppins(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: -0.5,
  );

  static TextStyle h2 = GoogleFonts.poppins(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
  );

  static TextStyle h3 = GoogleFonts.poppins(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyLarge = GoogleFonts.poppins(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
  );

  static TextStyle bodySmall = GoogleFonts.poppins(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  // >>> Button Text:
  static TextStyle buttonLarge = GoogleFonts.poppins(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static TextStyle buttonMedium = GoogleFonts.poppins(
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
  );

  static TextStyle buttonSmall = GoogleFonts.poppins(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  // >>> Label Text:
  static TextStyle labelMedium = GoogleFonts.poppins(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );

  // >>> Helper functions for property variation (color, font weight, etc):
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  static TextStyle withWeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }
}
