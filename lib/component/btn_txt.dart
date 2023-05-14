// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:flutter_application_spacex/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonText extends StatelessWidget {
  final String title;
  const ButtonText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.poppins(color: AppColors.txtColor, fontSize: 18));
  }
}
