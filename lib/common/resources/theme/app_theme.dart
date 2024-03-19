import 'package:flutter/material.dart';

import '../color/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      foregroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.white),
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(color: Colors.white, fontSize: 20),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(color: Colors.white, fontSize: 20),
      ).titleLarge,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    dividerColor: Colors.black,
    dividerTheme: const DividerThemeData(
      color: Colors.black,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
    ),
    textTheme: _buildTextTheme(lightMode: true),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: Colors.black,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      color: Colors.teal,
      iconTheme: const IconThemeData(color: Colors.white),
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(color: Colors.white, fontSize: 20),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(color: Colors.white, fontSize: 20),
      ).titleLarge,
    ),
    textTheme: _buildTextTheme(lightMode: false), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
    // Add other dark mode configurations
  );

  static TextTheme _buildTextTheme({required bool lightMode}) {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      displayMedium: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      displaySmall: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      headlineMedium: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      labelLarge: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: Colors.white,
        fontFamily: 'Manrope',
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: lightMode ? AppColors.black : Colors.white,
        fontFamily: 'Manrope',
      ),
    );
  }
}
