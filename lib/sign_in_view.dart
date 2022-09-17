import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/sign_up_view.dart';

class SignInView extends GetView {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 1080;
    double h = MediaQuery.of(context).size.height / 1920;
    return Scaffold(
        body: SizedBox(
      width: 1080 * w,
      height: 1920 * h,
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 99 * w,
            right: 100 * w,
            top: 205 * h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let’s sign you in.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 70 * h,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5 * h),
              Text(
                "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do dolore eiusmod tempor",
                style: GoogleFonts.poppins(
                  color: Color(0xa5000000),
                  fontSize: 32 * h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 162.83 * h),
              Container(
                width: 881 * w,
                height: 136 * h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 881 * w,
                      height: 136 * h,
                      child: Material(
                        color: Color(0xfffbfbfb),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Color(0x3f000000),
                          ),
                          borderRadius: BorderRadius.circular(22 * w),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 60 * w,
                            right: 402 * w,
                            top: 58 * h,
                            bottom: 36 * h,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Phone, email or username",
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 32 * h,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16 * h,
              ),
              Container(
                width: 881 * w,
                height: 136 * h,
                child: Stack(
                  children: [
                    Container(
                      width: 881 * w,
                      height: 136 * h,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 881 * w,
                            height: 136 * h,
                            child: Material(
                              color: Color(0xfffbfbfb),
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: Color(0x3f000000),
                                ),
                                borderRadius: BorderRadius.circular(22 * w),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 60 * w,
                                  right: 402 * w,
                                  top: 58 * h,
                                  bottom: 36 * h,
                                ),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "passwords",
                                      hintStyle: GoogleFonts.poppins(
                                        fontSize: 32 * h,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 550 * h),
              Row(
                children: [
                  Text(
                    "Don’t have an account?  ",
                    style: TextStyle(
                      fontSize: 32 * h,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(SignUpView());
                    },
                    child: Text(
                      "Register",
                      style: GoogleFonts.poppins(
                          fontSize: 32 * h, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                width: 881 * w,
                height: 136 * h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 881 * w,
                      height: 136 * h,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33 * w),
                          ),
                        ),
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 32 * h,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Getting Troubles? ",
                    style: GoogleFonts.poppins(
                      fontSize: 32 * h,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Condact Us",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 32 * h),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
