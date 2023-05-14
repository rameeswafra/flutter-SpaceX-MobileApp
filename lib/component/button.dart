import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    required this.title,
    required this.onPressed,
    //required this.icon,
    required this.width,
    required this.fontColor,
    required this.height,
    required this.bgColor,
  });

  final String title;
  final Function() onPressed;
  //final IconData ? icon;
  final double width;
  final Color? fontColor;
  final Color bgColor;
  final double height;
  //final bool isIcon;
  //  isIcon=false;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //isIcon?Icon(icon):SizedBox(),
            Text(title,
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  //AppStyling.boldTextSize20.copyWith(color: AppColors.txtColor),
                )),
          ],
        ),
      ),
    );
  }
}
