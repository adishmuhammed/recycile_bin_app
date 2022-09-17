import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/abstracts.dart';

class SignUpDone extends GetView {
  const SignUpDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 1920;
    double w = MediaQuery.of(context).size.width / 1080;
    Widgets widget = Widgets.textStyle(w, h);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 130 * w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, User Welcome To",
                  style: widget.heading,
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Your App Name",
                  style: GoogleFonts.poppins(
                    fontSize: 70 * h,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Your Registration has been succsessful  completed",
                  style: widget.texts,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Center(
            child: Image.asset(
              "assets/check 1.png",
              width: 378 * h,
              height: 378 * w,
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.toNamed("/home");
              },
              style: TextButton.styleFrom(
                fixedSize: Size(881 * w, 136 * h),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33 * w),
                ),
              ),
              child: Text(
                "Next",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 32 * h,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
