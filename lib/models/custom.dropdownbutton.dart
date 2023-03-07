import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justiserve/constants.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.onSelected,
    required this.value,
  });

  final List<DropdownMenuItem<String>> items;
  final void Function(dynamic) onSelected;

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.w),
      decoration: BoxDecoration(
        // color: AppColours.secondaryGrey,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColours.secondaryGrey),
      ),
      child: DropdownButton<String>(
        icon: Icon(
          Icons.keyboard_arrow_down_outlined,
          color: AppColours.primaryWhite,
        ),
        underline: Container(),
        dropdownColor: AppColours.secondaryGrey,
        isExpanded: true,
        borderRadius: BorderRadius.circular(8.r),
        value: value,
        items: items,
        onChanged: onSelected,
        style: GoogleFonts.lato(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          color: AppColours.primaryWhite,
        ),
      ),
    );
  }
}
