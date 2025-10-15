import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/core/constants/appcolors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final VoidCallback? onPressed;
  final Gradient? gradient;
  final Color textcolor;
  final double width;
  final double height;
  final double radius;
  final double space;
  final TextStyle? textStyle;
  final String? logo;
  final IconData? icon;
  final String? svgIcon;

  const CustomButton({
    required this.text,
    required this.onPressed,
    this.gradient,
    this.textcolor = AppColors.black,
    this.isLoading = false,
    required this.width,
    this.height = 38,
    this.radius = 47,
    this.space = 8,
    this.textStyle,
    this.logo,
    this.icon,
    this.svgIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: AppColors.secondaryColor, // remove solid color
          shadowColor: AppColors.secondaryColor.withValues(alpha: 0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            // gradient: gradient ?? AppColors.buttonGradient, // use gradient
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Container(
            alignment: Alignment.center,
            child: isLoading
                ? SpinKitThreeBounce(color: AppColors.secondaryColor)
                : _buildContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (icon != null || svgIcon != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Icon(icon!, color: textcolor, size: 16)
          else if (svgIcon != null)
            SvgPicture.asset(
              svgIcon!,
              height: 16,
              colorFilter: ColorFilter.mode(textcolor, BlendMode.srcIn),
            ),
          Gap(space),
          Text(
            text,
            style:
                textStyle ??
                GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: textcolor,
                ),
          ),
        ],
      );
    }

    if (logo != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(logo!, height: 24, width: 24, fit: BoxFit.contain),
          Gap(space),
          Text(
            text,
            style:
                textStyle ??
                GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: textcolor,
                ),
          ),
        ],
      );
    }

    return Text(
      text,
      style:
          textStyle ??
          GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: textcolor,
          ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final VoidCallback onPressed;
  final Color buttoncolor;
  final Color backgroundcolor;
  final Color textcolor;
  final double width;
  final double height;
  final double radius;
  final double space;
  //final TextStyle? textStyle;
  final String? logo;

  const CustomOutlineButton({
    required this.text,
    required this.onPressed,
    required this.buttoncolor,
    this.backgroundcolor = Colors.transparent,
    required this.textcolor,
    this.isLoading = false,
    this.width = double.infinity,
    this.height = 48,
    this.radius = 47.55,
    this.space = 8,
    //this.textStyle,
    this.logo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == double.infinity ? null : width,
      height: height,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          elevation: 0,
          backgroundColor: backgroundcolor,
          minimumSize: Size(double.infinity, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          side: BorderSide(color: buttoncolor, width: 2),
        ),
        child: isLoading
            ? SpinKitThreeBounce(color: AppColors.primaryColor)
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (logo != null) ...[
                    SvgPicture.asset(
                      logo!,
                      height: 24.37,
                      width: 24.37,
                      fit: BoxFit.contain,
                    ),
                    Gap(space),
                  ],
                  Text(
                    text,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: textcolor,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
