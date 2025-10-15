import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/app/core/constants/appcolors.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    this.hintText,
    required this.controller,
    this.maxLines = 1,
    this.maxLength = 2000,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.validator,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon, // 👈 NEW
    this.onSuffixTap, // 👈 NEW
    this.initialValue,
    this.labelText,
  });

  final String? labelText;
  final String? hintText;
  final TextEditingController controller;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final bool isPassword;
  final IconData? prefixIcon;
  final IconData? suffixIcon; // 👈 NEW
  final VoidCallback? onSuffixTap; // 👈 NEW
  final String? initialValue;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool obscureText = true;

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      widget.controller.text = widget.initialValue!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(12),
        shadowColor: Colors.black.withOpacity(0.1),
        child: TextFormField(
          controller: widget.controller,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          keyboardType: widget.keyboardType,
          inputFormatters: widget.inputFormatters,
          validator: widget.validator,
          obscureText: widget.isPassword ? obscureText : false,
          decoration: InputDecoration(
            counterText: "",
            hintText: widget.hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.hintTextColor),
            labelText: widget.labelText,
            labelStyle: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.black),
            filled: true,
            fillColor: AppColors.white,
            prefixIcon: widget.prefixIcon != null
                ? Icon(widget.prefixIcon, color: AppColors.hintTextColor)
                : null,

            // 👇 Updated suffixIcon logic
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.hintTextColor,
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  )
                : (widget.suffixIcon != null
                    ? IconButton(
                        icon: Icon(widget.suffixIcon,
                            color: AppColors.hintTextColor),
                        onPressed: widget.onSuffixTap,
                      )
                    : null),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.hintTextColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.hintTextColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.black, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
