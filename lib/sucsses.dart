import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSucess extends StatelessWidget {
  const OrderSucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = (Get.height / 1920);
    var w = (Get.width / 1080);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: 342 * h, left: 130 * w, right: 130 * w),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Waitng For Your Pic Up",
                        style: GoogleFonts.poppins(
                            fontSize: 70 * h, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, o eiusmod tempor incididunt ut labore",
                        style: GoogleFonts.poppins(fontSize: 32 * h),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 260 * h),
                    child: Image.asset(
                      "assets/check0.png",
                      width: 378 * h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(881 * w, 136 * h),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33 * w)),
                ),
                onPressed: () {},
                child: Text(
                  "Back to home",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Getting Troubles? ",
                    style: GoogleFonts.poppins(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Contact US? ",
                      style: GoogleFonts.poppins(),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
