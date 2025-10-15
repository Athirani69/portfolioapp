import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/core/constants/appcolors.dart';


class AppTheme {
  // light theme
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.white,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    //primary color
    primaryColor: AppColors.primaryColor,
    // color scheme
    // colorScheme: ColorScheme.fromSwatch().copyWith(
    //   primary: AppColors.primaryColor,
    // ),    //appbar theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),

    // text theme
    textTheme: GoogleFonts.robotoTextTheme(
      ThemeData.light().textTheme.copyWith(
        // display large
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),

        displayMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),

        displaySmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),

        // title large
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
          // height: 24 / 22,
        ),

        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
          // height: 24 / 22,
        ),
        titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
          // height: 18 / 16,
        ),

        headlineLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
          // height: 24 / 22,
        ),
        headlineMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
          // height: 20 / 20,
        ),

        // headline small
        headlineSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
          // height: 12 / 16,
        ),

        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),

        // label medium
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),

        labelSmall: TextStyle(
          fontSize: 10.5,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),

        // body large
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
          // height: 16 / 30,
        ),

        // body medium
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
          // height: 12 / 20,
        ),

        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
          // height: 12 / 20,
        ),
      ),
    ),

    // button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryColor,
        padding: EdgeInsets.zero,
      ),
    ),

    // text button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.secondaryColor.withOpacity(0.15),
        foregroundColor: AppColors.primaryColor,
        textStyle: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.secondaryColor,
        ),
      ),
    ), // text field theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      hintStyle: Get.textTheme.labelMedium?.copyWith(
        color: AppColors.hintTextColor,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.hintTextColor)
      ),

      outlineBorder:BorderSide(color: AppColors.hintTextColor),


      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.hintTextColor)

      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.hintTextColor)

      ),

      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    ),
  );
}

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:snndrr/app/core/constants/appcolors.dart';

// class AppTheme {
//   static double getResponsiveFontSize(BuildContext context, double fontSize) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double baseWidth = 375.0;
//     double scaleFactor = screenWidth / baseWidth;
//     scaleFactor = scaleFactor.clamp(0.8, 1.2);
//     return fontSize * scaleFactor;
//   }

//   static TextTheme getResponsiveTextTheme([BuildContext? context]) {
//     return GoogleFonts.nunitoTextTheme(
//       ThemeData.light().textTheme.copyWith(
//             // title
//             titleLarge: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w600,
//               color: AppColors.bodyTextColor,
//             ),
//             titleMedium: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w600,
//               color: AppColors.bodyTextColor,
//             ),
//             titleSmall: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//               color: AppColors.bodyTextColor,
//             ),

//             // headline
//             headlineLarge: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//               color: AppColors.bodyTextColor,
//             ),
//             headlineMedium: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               color: AppColors.bodyTextColor,
//             ),
//             headlineSmall: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w500,
//               color: AppColors.bodyTextColor,
//             ),

//             // display
//             displayLarge: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w300,
//               color: AppColors.bodyTextColor,
//             ),
//             displayMedium: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: AppColors.bodyTextColor,
//             ),
//             displaySmall: TextStyle(
//               fontSize: 10,
//               fontWeight: FontWeight.w400,
//               color: AppColors.bodyTextColor,
//             ),

//             // label
//             labelLarge: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               color: AppColors.bodyTextColor,
//             ),
//             labelMedium: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//               color: AppColors.bodyTextColor,
//             ),
//             labelSmall: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: AppColors.bodyTextColor,
//             ),

//             // body
//             bodyLarge: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w400,
//               color: AppColors.bodyTextColor,
//             ),
//             bodyMedium: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w600,
//               color: AppColors.bodyTextColor,
//             ),
//             bodySmall: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: AppColors.bodyTextColor,
//             ),
//           ),
//     );
//   }

//   static ThemeData getTheme() {
//     return ThemeData.light().copyWith(
//       //primary color
//       primaryColor: AppColors.primaryColor,

//       // color scheme
//       colorScheme: ColorScheme.fromSwatch().copyWith(
//         primary: AppColors.primaryColor,
//         secondary: AppColors.secondaryColor,
//       ),

//       //appbar theme
//       appBarTheme: AppBarTheme(
//         backgroundColor: AppColors.backgroundColor,
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarColor: AppColors.primaryColor,
//           statusBarIconBrightness: Brightness.dark,
//         ),
//       ),

//       // scaffold background color
//       scaffoldBackgroundColor: AppColors.backgroundColor,

//       // text theme
//       textTheme: getResponsiveTextTheme(),

//       // button theme
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: AppColors.primaryColor,
//         ),
//       ),

//       // text button theme
//       textButtonTheme: TextButtonThemeData(
//         style: TextButton.styleFrom(
//           backgroundColor: AppColors.backgroundColor,
//           foregroundColor: AppColors.primaryColor,
//           textStyle: GoogleFonts.nunito(
//             fontSize: 18,
//             fontWeight: FontWeight.w600,
//             color: AppColors.bodyTextColor,
//           ),
//         ),
//       ),

//       // text field theme
//       inputDecorationTheme: InputDecorationTheme(
//         filled: true,
//         fillColor: AppColors.textfieldColor,
//         hintStyle: TextStyle(
//           color: AppColors.hintTextColor,
//           fontSize: 14,
//           fontWeight: FontWeight.w400,
//         ),
//         outlineBorder: BorderSide(color: AppColors.tertiaryColor, width: 0.1),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide(color: AppColors.tertiaryColor, width: 0.1),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide(color: AppColors.tertiaryColor, width: 0.1),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide(color: AppColors.tertiaryColor, width: 0.1),
//         ),
//         contentPadding: const EdgeInsets.symmetric(
//           horizontal: 16,
//         ),
//       ),
//     );
//   }
// }
