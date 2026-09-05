import 'package:flutter/material.dart';
import 'package:islami/utils/app_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppThems {
  static ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
        headlineLarge: AppStyle.bold16White,
      )
  );

  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.elMessiri(
          color: AppColors.PraimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
  );

//  static get GoogleFonts => null;
}