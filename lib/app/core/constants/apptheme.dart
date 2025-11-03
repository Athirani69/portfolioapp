import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/core/constants/appcolors.dart';

class AppTheme {
  static final darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFF0D1117), // GitHub dark base
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,

    // 🌈 Color Scheme
    primaryColor: AppColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      secondary: const Color(0xFF00BFA6), // vivid teal accent
      tertiary: const Color(0xFF38BDF8), // cyan accent for hover/highlights
    ),

    // 🧭 AppBar Theme (navbar look)
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF0D1117).withOpacity(0.85),
      surfaceTintColor: Colors.transparent,
      elevation: 2,
      shadowColor: Colors.cyanAccent.withOpacity(0.05),
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      titleTextStyle: GoogleFonts.jetBrainsMono(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    ),

    // ✍️ Text Theme (Readable + modern)
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme.copyWith(
        displayLarge: GoogleFonts.jetBrainsMono(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        displayMedium: GoogleFonts.jetBrainsMono(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Colors.white70,
        ),
        titleLarge: GoogleFonts.jetBrainsMono(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        titleMedium: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white70,
        ),
        bodyLarge: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white70,
          height: 1.6,
        ),
        bodyMedium: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.white54,
          height: 1.6,
        ),
      ),
    ),

    // 🔘 Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00BFA6).withOpacity(0.1),
        foregroundColor: const Color(0xFF00BFA6),
        shadowColor: const Color(0xFF00BFA6).withOpacity(0.4),
        elevation: 4,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: Color(0xFF00BFA6)),
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.4,
        ),
      ),
    ),

    // 🧩 Card Theme (project cards / sections)
    cardTheme: CardThemeData(
      color: const Color(0xFF161B22),
      elevation: 6,
      shadowColor: Colors.cyanAccent.withOpacity(0.15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.white.withOpacity(0.05)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
    ),

    // 📝 Input Fields (Contact form)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white.withOpacity(0.05),
      hintStyle: Get.textTheme.labelMedium?.copyWith(
        color: Colors.white38,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF00BFA6)),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    ),

    // 💬 Tooltip (for social icons hover)
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: const Color(0xFF161B22),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white24),
      ),
      textStyle: const TextStyle(color: Colors.white, fontSize: 12),
    ),

    // 🖱️ Hover feedback for web (ripple off)
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
