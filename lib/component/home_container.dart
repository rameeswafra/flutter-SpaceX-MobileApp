
import 'package:flutter/material.dart';
import 'package:flutter_application_spacex/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeText extends StatelessWidget {
  const HomeText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.orbitron(
        color: AppColors.btnColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
