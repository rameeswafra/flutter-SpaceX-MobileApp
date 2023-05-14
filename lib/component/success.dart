import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SuccessComponent extends StatelessWidget {
  const SuccessComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.h,
      width: 28.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.successBtn,
          border: Border.all(
            color: AppColors.successBorder,
            width: 1,
          )),
      child: Center(
        child: Text(
          "Success",
          style: GoogleFonts.poppins(
            color: AppColors.btnColor,
            fontSize: 15,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
