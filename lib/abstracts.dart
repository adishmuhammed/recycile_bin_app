import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class Widgets {
  double h = 1;
  double w = 1;
  TextStyle heading = GoogleFonts.poppins();
  TextStyle texts = GoogleFonts.poppins();
  Widgets() {}
  Widgets.textStyle(this.h, this.w) {
    heading = GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 70 * h,
      fontWeight: FontWeight.w500,
    );
    texts = GoogleFonts.poppins(
      color: Color(0xa5000000),
      fontSize: 32 * h,
      fontWeight: FontWeight.w400,
    );
  }

  Widget intoImage(double mediaWidth, double mediaHight) {
    return Image.asset(
      "assets/undraw_woman_re_afr8 1.png",
      width: 556 * mediaWidth,
      height: 605 * mediaHight,
    );
  }

  Widget introContent(String text, double mediaWidth, double mediaHight) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Welcome to",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 40 * mediaHight,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          "Recycle Bin App",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 80 * mediaHight,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 103 * mediaHight),
          child: Text(
            text,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 32 * mediaHight,
                color: const Color(0xA6000000)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
