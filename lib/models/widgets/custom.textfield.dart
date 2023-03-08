import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justiserve/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    // required this.inputAction,
    required this.hint,
    this.readOnly,
    this.maxLength,
    required this.onSubmitted,
    required this.inputType,
    required this.inputFormat,
  });

  final TextEditingController controller;
  // final TextInputAction inputAction;
  final String hint;
  final bool? readOnly;
  final int? maxLength;
  final void Function(String) onSubmitted;
  final TextInputType inputType;
  final List<TextInputFormatter> inputFormat;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49.h,
      width: 378.w,
      child: TextField(
        style: GoogleFonts.lato(
          color: AppColours.primaryWhite,
          fontSize: 16.sp,
          fontWeight: kFW400,
        ),
        cursorColor: AppColours.primaryWhite,
        controller: controller,
        textInputAction: kActionNext,
        readOnly: readOnly ?? false,
        maxLength: maxLength,
        onSubmitted: onSubmitted,
        keyboardType: inputType,
        inputFormatters: inputFormat,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.lato(
            color: AppColours.primaryWhite,
            fontSize: 16.sp,
            fontWeight: kFW400,
          ),
          filled: true,
          fillColor: AppColours.primaryGrey,
          counterText: "",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 1.5.w),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
