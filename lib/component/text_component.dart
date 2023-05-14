// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComponents extends StatelessWidget {
  const TextComponents({
    Key? key,
    required this.title,
    required this.fontColor,
    required this.fontSize,
    this.fontWeight,
    //this.image,
  }) : super(key: key);

  final String title;
  final Color fontColor;
  final double fontSize;
  final FontWeight? fontWeight;
  final bool? isOverFlow = true;
  //final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image!),
          fit: BoxFit.fill,
        ),
      ),*/
      child: Text(
        title,
        // overflow: isOverFlow ? TextOverflow.ellipsis:SizedBox(),
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          color: fontColor,
        ),
      ),
    );
  }
}
